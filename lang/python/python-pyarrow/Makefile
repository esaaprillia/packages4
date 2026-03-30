include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyarrow
PKG_VERSION:=23.0.1
PKG_RELEASE:=1

PYPI_NAME:=pyarrow
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host numpy/host python-setuptools-scm/host python-cffi/host python-pandas/host

CMAKE_BINARY_SUBDIR:= _build

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../meson/cmake.mk
include ../python3-package.mk

export PYARROW_CMAKE_OPTIONS=\
	--no-warn-unused-cli \
	-DCMAKE_SYSTEM_NAME=Linux \
	-DCMAKE_SYSTEM_VERSION=1 \
	-DCMAKE_SYSTEM_PROCESSOR=$(ARCH) \
	-DCMAKE_BUILD_TYPE=$(if $(CONFIG_DEBUG),RelWithDebInfo,Release) \
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
	-DCMAKE_FIND_ROOT_PATH="$(CMAKE_FIND_ROOT_PATH);$(CMAKE_HOST_FIND_ROOT_PATH)" \
	-DCMAKE_FIND_ROOT_PATH_MODE_PROGRAM=NEVER \
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
	-DARROW_SIMD_LEVEL=NONE \
	-DARROW_RUNTIME_SIMD_LEVEL=MAX \
	-DPYTHON_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/$(PYTHON3)" \
	-DPython3_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/$(PYTHON3)" \
	-DPython3_NumPy_INCLUDE_DIRS="$(HOST_PYTHON3_PKG_DIR)/numpy/_core/include"

define Package/python3-pyarrow
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python library for Apache Arrow
  URL:=https://arrow.apache.org/
  DEPENDS:=+python3 +python3-numpy +python3-cffi +python3-fsspec +python3-pandas +apache-arrow
endef

define Package/python3-pyarrow/description
This library provides a Python API for functionality provided by the Arrow C++ libraries, along with tools for Arrow integration and interoperability with pandas, NumPy, and other software in the Python ecosystem.
endef

CMAKE_OPTIONS += \
	-DCMAKE_FIND_ROOT_PATH="$(CMAKE_FIND_ROOT_PATH);$(CMAKE_HOST_FIND_ROOT_PATH)" \
	-DPython3_NumPy_INCLUDE_DIRS="$(HOST_PYTHON3_PKG_DIR)/numpy/_core/include"

$(eval $(call Py3Package,python3-pyarrow))
$(eval $(call BuildPackage,python3-pyarrow))
$(eval $(call BuildPackage,python3-pyarrow-src))
