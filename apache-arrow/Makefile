include $(TOPDIR)/rules.mk

PKG_NAME:=apache-arrow
PKG_VERSION:=22.0.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/apache/arrow/releases/download/apache-arrow-$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=boost flatbuffers rapidjson xsimd grpc/host python-cython/host numpy/host python-setuptools-scm/host python-cffi/host python-pandas/host

CMAKE_BINARY_SUBDIR := build-cpp
CMAKE_SOURCE_SUBDIR := cpp
PYTHON3_PKG_BUILD:=0

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

define Package/apache-arrow
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Apache Arrow is the universal columnar format and multi-language toolbox for fast data interchange and in-memory analytics
	DEPENDS:=+libstdcpp +abseil-cpp +apache-orc +brotli +libbz2 +glog +grpc +utf8proc +liblz4 +libopenssl +protobuf +re2 +snappy +thrift +libzstd +zlib
	URL:=https://arrow.apache.org/
endef

define Package/apache-arrow/description
	Apache Arrow is a universal columnar format and multi-language toolbox for fast data interchange and in-memory analytics. It contains a set of technologies that enable data systems to efficiently store, process, and move data.
endef

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

define Build/Prepare
	$(call Build/Prepare/Default)
	$(RM) $(STAGING_DIR)/usr/bin/grpc_*
	$(CP) $(STAGING_DIR_HOSTPKG)/bin/grpc_* $(STAGING_DIR)/usr/bin/
endef

CMAKE_OPTIONS += \
	-DARROW_BUILD_STATIC=OFF \
	-DARROW_DEPENDENCY_SOURCE=SYSTEM \
	-DARROW_RUNTIME_SIMD_LEVEL=MAX \
	-DARROW_BUILD_EXAMPLES=OFF \
	-DARROW_BUILD_TESTS=OFF \
	-DARROW_COMPUTE=ON \
	-DARROW_CSV=ON \
	-DARROW_DATASET=ON \
	-DARROW_FILESYSTEM=ON \
	-DARROW_FLIGHT=ON \
	-DARROW_HDFS=ON \
	-DARROW_JSON=ON \
	-DARROW_PARQUET=ON \
	-DARROW_SIMD_LEVEL=NONE \
	-DARROW_TENSORFLOW=ON \
	-DARROW_USE_GLOG=ON \
	-DARROW_ORC=ON \
	-DARROW_WITH_BROTLI=ON \
	-DARROW_WITH_BZ2=ON \
	-DARROW_WITH_LZ4=ON \
	-DARROW_WITH_MUSL=ON \
	-DARROW_WITH_SNAPPY=ON \
	-DARROW_WITH_ZLIB=ON \
	-DARROW_WITH_ZSTD=ON \
	-DPARQUET_REQUIRE_ENCRYPTION=ON \
	-DARROW_GRPC_CPP_PLUGIN="$(STAGING_DIR)/usr/bin/grpc_cpp_plugin"

PYTHON3_PKG_BUILD_PATH:=python
PYTHON3_PKG_WHEEL_NAME:=pyarrow
PYTHON3_PKG_WHEEL_VERSION:=22.0.0

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
	-DARROW_SIMD_LEVEL=NONE \
	-DARROW_RUNTIME_SIMD_LEVEL=MAX \
	-DPython3_NumPy_INCLUDE_DIRS="$(HOST_PYTHON3_PKG_DIR)/numpy/_core/include"

define Build/Compile
	$(call Build/Compile/Default)
	$(call Py3Build/Compile)
endef

define Build/Install
	$(call Build/Install/Default)
	$(call Py3Build/Install)
endef

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/arrow*.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/arrow*.pc
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/parquet.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/parquet.pc
endef

define Package/apache-arrow/install
	#$(INSTALL_DIR) $(1)/usr/bin
	#$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,apache-arrow))
$(eval $(call Py3Package,python3-pyarrow))
$(eval $(call BuildPackage,python3-pyarrow))
$(eval $(call BuildPackage,python3-pyarrow-src))
