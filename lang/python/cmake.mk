cmake_bool = $(patsubst %,-D%:BOOL=$(if $($(1)),ON,OFF),$(2))

PKG_USE_NINJA ?= 1
HOST_USE_NINJA ?= 1
ifeq ($(PKG_USE_NINJA),1)
  PKG_BUILD_PARALLEL ?= 1
endif
ifeq ($(HOST_USE_NINJA),1)
  HOST_BUILD_PARALLEL ?= 1
endif
PKG_INSTALL:=1

ifneq ($(findstring c,$(OPENWRT_VERBOSE)),)
  MAKE_FLAGS+=VERBOSE=1
  HOST_MAKE_FLAGS+=VERBOSE=1
endif

CMAKE_BINARY_DIR = $(PKG_BUILD_DIR)$(if $(CMAKE_BINARY_SUBDIR),/$(CMAKE_BINARY_SUBDIR))
CMAKE_SOURCE_DIR = $(PKG_BUILD_DIR)$(if $(CMAKE_SOURCE_SUBDIR),/$(CMAKE_SOURCE_SUBDIR))
HOST_CMAKE_SOURCE_DIR = $(HOST_BUILD_DIR)$(if $(CMAKE_SOURCE_SUBDIR),/$(CMAKE_SOURCE_SUBDIR))
HOST_CMAKE_BINARY_DIR = $(HOST_BUILD_DIR)$(if $(CMAKE_BINARY_SUBDIR),/$(CMAKE_BINARY_SUBDIR))
MAKE_PATH = $(firstword $(CMAKE_BINARY_SUBDIR) .)

ifeq ($(CONFIG_EXTERNAL_TOOLCHAIN),)
  cmake_tool=$(firstword $(TOOLCHAIN_BIN_DIRS))/$(1)
else
  cmake_tool=$(shell command -v $(1))
endif

ifeq ($(CONFIG_CCACHE),)
 CMAKE_C_COMPILER_LAUNCHER:=
 CMAKE_CXX_COMPILER_LAUNCHER:=
 CMAKE_C_COMPILER:=$(call cmake_tool,$(TARGET_CC))
 CMAKE_CXX_COMPILER:=$(call cmake_tool,$(TARGET_CXX))

 CMAKE_HOST_C_COMPILER:=$(HOSTCC)
 CMAKE_HOST_CXX_COMPILER:=$(HOSTCXX)
else
  CCACHE:=$(STAGING_DIR_HOST)/bin/ccache
  CMAKE_C_COMPILER_LAUNCHER:=$(CCACHE)
  CMAKE_CXX_COMPILER_LAUNCHER:=$(CCACHE)
  CMAKE_C_COMPILER:=$(TARGET_CC_NOCACHE)
  CMAKE_CXX_COMPILER:=$(TARGET_CXX_NOCACHE)

  CMAKE_HOST_C_COMPILER:=$(HOSTCC_NOCACHE)
  CMAKE_HOST_CXX_COMPILER:=$(HOSTCXX_NOCACHE)
endif
CMAKE_AR:=$(call cmake_tool,$(TARGET_AR))
CMAKE_NM:=$(call cmake_tool,$(TARGET_NM))
CMAKE_RANLIB:=$(call cmake_tool,$(TARGET_RANLIB))

CMAKE_FIND_ROOT_PATH:=$(STAGING_DIR)/usr;$(TOOLCHAIN_ROOT_DIR)
CMAKE_HOST_FIND_ROOT_PATH:=$(STAGING_DIR)/host;$(STAGING_DIR_HOSTPKG);$(STAGING_DIR_HOST)
CMAKE_SHARED_LDFLAGS:=-Wl,-Bsymbolic-functions
CMAKE_HOST_INSTALL_PREFIX = $(HOST_BUILD_PREFIX)

ifeq ($(HOST_USE_NINJA),1)
  CMAKE_HOST_OPTIONS += -DCMAKE_GENERATOR="Ninja"

  define Host/Compile/Cmake
	+$(NINJA) -C $(HOST_CMAKE_BINARY_DIR) $(1)
  endef

  define Host/Install/Cmake
	+$(NINJA) -C $(HOST_CMAKE_BINARY_DIR) install
  endef

  define Host/Uninstall/Cmake
	+$(NINJA) -C $(HOST_CMAKE_BINARY_DIR) uninstall
  endef
else
  CMAKE_HOST_OPTIONS += -DCMAKE_GENERATOR="Unix Makefiles"
endif

ifeq ($(PKG_USE_NINJA),1)
  CMAKE_OPTIONS += -DCMAKE_GENERATOR="Ninja"

  define Build/Compile/Cmake
	+$(NINJA) -C $(CMAKE_BINARY_DIR) $(1)
  endef

  define Build/Install/Cmake
	+DESTDIR="$(PKG_INSTALL_DIR)" $(NINJA) -C $(CMAKE_BINARY_DIR) install
  endef
else
  CMAKE_OPTIONS += -DCMAKE_GENERATOR="Unix Makefiles"
endif

define Build/Configure/Cmake
	mkdir -p $(CMAKE_BINARY_DIR)
	(cd $(CMAKE_BINARY_DIR); \
		CFLAGS="$(TARGET_CFLAGS) $(EXTRA_CFLAGS)" \
		CXXFLAGS="$(TARGET_CXXFLAGS) $(EXTRA_CXXFLAGS) -I$(PYTHON3_INC_DIR)" \
		LDFLAGS="$(TARGET_LDFLAGS) $(EXTRA_LDFLAGS) -lpython$(PYTHON3_VERSION)" \
		cmake \
			--no-warn-unused-cli \
			-DCMAKE_SYSTEM_NAME=Linux \
			-DCMAKE_SYSTEM_VERSION=1 \
			-DCMAKE_SYSTEM_PROCESSOR=$(ARCH) \
			-DCMAKE_BUILD_TYPE=$(if $(CONFIG_DEBUG),Debug,Release) \
			-DCMAKE_C_FLAGS_RELEASE="-DNDEBUG" \
			-DCMAKE_CXX_FLAGS_RELEASE="-DNDEBUG" \
			-DCMAKE_C_COMPILER_LAUNCHER="$(CMAKE_C_COMPILER_LAUNCHER)" \
			-DCMAKE_C_COMPILER="$(CMAKE_C_COMPILER)" \
			-DCMAKE_CXX_COMPILER_LAUNCHER="$(CMAKE_CXX_COMPILER_LAUNCHER)" \
			-DCMAKE_CXX_COMPILER="$(CMAKE_CXX_COMPILER)" \
			-DCMAKE_ASM_COMPILER_LAUNCHER="$(CMAKE_C_COMPILER_LAUNCHER)" \
			-DCMAKE_ASM_COMPILER="$(CMAKE_C_COMPILER)" \
			-DCMAKE_EXE_LINKER_FLAGS:STRING="$(TARGET_LDFLAGS)" \
			-DCMAKE_MODULE_LINKER_FLAGS:STRING="$(TARGET_LDFLAGS) $(CMAKE_SHARED_LDFLAGS)" \
			-DCMAKE_SHARED_LINKER_FLAGS:STRING="$(TARGET_LDFLAGS) $(CMAKE_SHARED_LDFLAGS)" \
			-DCMAKE_AR="$(CMAKE_AR)" \
			-DCMAKE_NM="$(CMAKE_NM)" \
			-DCMAKE_RANLIB="$(CMAKE_RANLIB)" \
			-DCMAKE_FIND_ROOT_PATH="$(CMAKE_FIND_ROOT_PATH)" \
			-DCMAKE_FIND_ROOT_PATH_MODE_PROGRAM=BOTH \
			-DCMAKE_FIND_ROOT_PATH_MODE_LIBRARY=ONLY \
			-DCMAKE_FIND_ROOT_PATH_MODE_INCLUDE=ONLY \
			-DCMAKE_STRIP=: \
			-DCMAKE_INSTALL_PREFIX=/usr \
			-DDL_LIBRARY=$(STAGING_DIR) \
			-DCMAKE_PREFIX_PATH=$(STAGING_DIR) \
			-DCMAKE_SKIP_RPATH=TRUE  \
			-DCMAKE_EXPORT_PACKAGE_REGISTRY=FALSE \
			-DCMAKE_EXPORT_NO_PACKAGE_REGISTRY=TRUE \
			-DCMAKE_FIND_USE_PACKAGE_REGISTRY=FALSE \
			-DCMAKE_FIND_PACKAGE_NO_PACKAGE_REGISTRY=TRUE \
			-DCMAKE_FIND_USE_SYSTEM_PACKAGE_REGISTRY=FALSE \
			-DCMAKE_FIND_PACKAGE_NO_SYSTEM_PACKAGE_REGISTRY=TRUE \
			$(CMAKE_OPTIONS) \
		$(CMAKE_SOURCE_DIR) \
	)
endef

define Build/InstallDev/Cmake
	$(INSTALL_DIR) $(1)
	$(CP) $(PKG_INSTALL_DIR)/* $(1)/
endef

Build/InstallDev = $(if $(CMAKE_INSTALL),$(Build/InstallDev/Cmake))

define Host/Configure/Cmake
	mkdir -p "$(HOST_CMAKE_BINARY_DIR)"
	(cd $(HOST_CMAKE_BINARY_DIR); \
		CFLAGS="$(HOST_CFLAGS)" \
		CXXFLAGS="$(HOST_CFLAGS) -I$(HOST_PYTHON3_INC_DIR)" \
		LDFLAGS="$(HOST_LDFLAGS) -lpython$(PYTHON3_VERSION)" \
		cmake \
			--no-warn-unused-cli \
			-DCMAKE_BUILD_TYPE=Release \
			-DCMAKE_C_COMPILER_LAUNCHER="$(CMAKE_C_COMPILER_LAUNCHER)" \
			-DCMAKE_C_COMPILER="$(CMAKE_HOST_C_COMPILER)" \
			-DCMAKE_CXX_COMPILER_LAUNCHER="$(CMAKE_CXX_COMPILER_LAUNCHER)" \
			-DCMAKE_CXX_COMPILER="$(CMAKE_HOST_CXX_COMPILER)" \
			-DCMAKE_ASM_COMPILER_LAUNCHER="$(CMAKE_C_COMPILER_LAUNCHER)" \
			-DCMAKE_ASM_COMPILER="$(CMAKE_HOST_C_COMPILER)" \
			-DCMAKE_C_FLAGS_RELEASE="-DNDEBUG" \
			-DCMAKE_CXX_FLAGS_RELEASE="-DNDEBUG" \
			-DCMAKE_EXE_LINKER_FLAGS:STRING="$(HOST_LDFLAGS)" \
			-DCMAKE_MODULE_LINKER_FLAGS:STRING="$(HOST_LDFLAGS)" \
			-DCMAKE_SHARED_LINKER_FLAGS:STRING="$(HOST_LDFLAGS)" \
			-DCMAKE_FIND_ROOT_PATH="$(CMAKE_HOST_FIND_ROOT_PATH)" \
			-DCMAKE_FIND_ROOT_PATH_MODE_PROGRAM=BOTH \
			-DCMAKE_FIND_ROOT_PATH_MODE_LIBRARY=ONLY \
			-DCMAKE_FIND_ROOT_PATH_MODE_INCLUDE=ONLY \
			-DCMAKE_STRIP=: \
			-DCMAKE_INSTALL_PREFIX=$(CMAKE_HOST_INSTALL_PREFIX) \
			-DCMAKE_PREFIX_PATH=$(HOST_BUILD_PREFIX) \
			-DCMAKE_SKIP_RPATH=TRUE  \
			-DCMAKE_INSTALL_LIBDIR=lib \
			-DCMAKE_EXPORT_PACKAGE_REGISTRY=FALSE \
			-DCMAKE_EXPORT_NO_PACKAGE_REGISTRY=TRUE \
			-DCMAKE_FIND_USE_PACKAGE_REGISTRY=FALSE \
			-DCMAKE_FIND_PACKAGE_NO_PACKAGE_REGISTRY=TRUE \
			-DCMAKE_FIND_USE_SYSTEM_PACKAGE_REGISTRY=FALSE \
			-DCMAKE_FIND_PACKAGE_NO_SYSTEM_PACKAGE_REGISTRY=TRUE \
			-DBUILD_SHARED_LIBS=OFF \
			$(CMAKE_HOST_OPTIONS) \
		$(HOST_CMAKE_SOURCE_DIR) \
	)
endef

MAKE_FLAGS += \
	CMAKE_COMMAND='$$(if $$(CMAKE_DISABLE_$$@),:,$(STAGING_DIR_HOST)/bin/cmake)' \
	CMAKE_DISABLE_cmake_check_build_system=1

Host/Configure=$(call Host/Configure/Cmake)
Host/Compile=$(call Host/Compile/Cmake)
Host/Install=$(call Host/Install/Cmake)
Host/Uninstall=$(call Host/Uninstall/Cmake)
Build/Configure=$(call Build/Configure/Cmake)
Build/Compile=$(call Build/Compile/Cmake)
Build/Install=$(call Build/Install/Cmake)
