include $(TOPDIR)/rules.mk

PKG_NAME:=pytorch
PKG_VERSION:=2.13.0
PKG_RELEASE:=1

PKG_SOURCE:=pytorch-v$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/pytorch/pytorch/releases/download/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause-Modification
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/pytorch-v$(PKG_VERSION)
CMAKE_BINARY_SUBDIR := build

PKG_BUILD_DEPENDS:=numpy/host python-packaging/host python-yaml/host python-typing-extensions/host python-six/host python-requests/host protobuf/host libfmt eigen python-pybind11
PYTHON3_PKG_BUILD:=0

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

define Package/pytorch
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Tensors and Dynamic neural networks in Python with strong GPU acceleration
	DEPENDS:=+libatomic +libstdcpp +abseil-cpp +gflags +glog +numactl +openmp +openblas +protobuf +sleef +libuv
	URL:=https://github.com/pytorch/pytorch
endef

define Package/pytorch/description
	You can reuse your favorite Python packages such as NumPy, SciPy, and Cython to extend PyTorch when needed.
endef

define Package/python3-pytorch
	SUBMENU:=Python
	SECTION:=lang
	CATEGORY:=Languages
	TITLE:=pytorch Python library
	DEPENDS:=+python3-light +python3-filelock +python3-fsspec +python3-jinja2 +python3-networkx +python3-numpy +python3-sympy +python3-typing-extensions +python3-yaml +pytorch
	URL:=https://github.com/pytorch/pytorch
endef

define Package/python3-pytorch/description
	pytorch Python library
endef

define Build/Prepare
	$(call Build/Prepare/Default)
	mkdir -p $(PKG_INSTALL_DIR)
endef

TARGET_CFLAGS := $(filter-out -Os -pipe -mcpu=generic,$(TARGET_CFLAGS))
TARGET_CCFLAGS := $(filter-out -Os -pipe -mcpu=generic,$(TARGET_CCFLAGS))
TARGET_CXXFLAGS := $(filter-out -Os -pipe -mcpu=generic,$(TARGET_CXXFLAGS))

TARGET_CFLAGS += -Os -pipe -march=armv8-a+crc
TARGET_CCFLAGS += -Os -pipe -march=armv8-a+crc
TARGET_CXXFLAGS += -Os -pipe -march=armv8-a+crc

CMAKE_OPTIONS += \
	-DINSTALL_TEST=OFF \
	-DBUILD_TEST=OFF \
	-DBUILD_CUSTOM_PROTOBUF=OFF \
	-DBUILD_SHARED_LIBS=ON \
	-DUSE_SYSTEM_SLEEF=ON \
	-DUSE_SYSTEM_PYBIND11=ON \
	-DUSE_SYSTEM_EIGEN_INSTALL=ON \
	-DUSE_SYSTEM_FMT=ON \
	-DUSE_GLOG=ON \
	-DUSE_GFLAGS=ON \
	-DUSE_PRIORITIZED_TEXT_FOR_LD=OFF \
	-DPython_SITELIB="$(PYTHON3_PKG_DIR)" \
	-DPYTORCH_BUILD_VERSION="$(PKG_VERSION)" \
	-DPYTORCH_BUILD_NUMBER=1 \
	-DCAFFE2_CUSTOM_PROTOC_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/protoc" \
	-DPROTOBUF_PROTOC_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/protoc" \
	-DCMAKE_FIND_ROOT_PATH="$(CMAKE_FIND_ROOT_PATH);$(CMAKE_HOST_FIND_ROOT_PATH)"

define Build/Compile
	$(call Build/Compile/Default)
	#$(call Py3Build/Compile)
endef

define Build/Install
	$(call Build/Install/Default)
	#$(call Py3Build/Install)
endef

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	#$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/Imath.pc
	#$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/Imath.pc
	#$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/PyImath.pc
	#$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/PyImath.pc
endef

define Package/pytorch/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,pytorch))
$(eval $(call Py3Package,python3-pytorch))
$(eval $(call BuildPackage,python3-pytorch))
$(eval $(call BuildPackage,python3-pytorch-src))
