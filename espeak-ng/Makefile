include $(TOPDIR)/rules.mk

PKG_NAME:=espeak-ng
PKG_VERSION:=1.52.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/espeak-ng/espeak-ng/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0 Apache-2.0 BSD-2-Clause License
PKG_LICENSE_FILES:=COPYING COPYING.APACHE COPYING.BSD2 COPYING.UCD

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/espeak-ng
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=eSpeak NG Text-to-Speech
	DEPENDS:=+pcaudiolib +sonic +libstdcpp
	URL:=https://github.com/espeak-ng/espeak-ng
endef

define Package/espeak-ng/description
	eSpeak NG is an open source speech synthesizer that supports more than hundred languages and accents.
endef

define Build/Configure/Default
	mkdir -p $(CMAKE_BINARY_DIR)
	(cd $(CMAKE_BINARY_DIR); \
		CFLAGS="$(HOST_CFLAGS)" \
		CXXFLAGS="$(HOST_CFLAGS)" \
		LDFLAGS="$(HOST_LDFLAGS)" \
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

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DESPEAK_COMPAT=ON \
	-DESPEAK_BUILD_MANPAGES=OFF \
	-DUSE_MBROLA=ON \
	-DUSE_LIBSONIC=ON \
	-DUSE_LIBPCAUDIO=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/espeak-ng.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/espeak-ng.pc
endef

define Package/espeak-ng/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib \
	  $(1)/usr/share
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/espeak-ng-data \
	  $(1)/usr/share/
endef

$(eval $(call BuildPackage,espeak-ng))
