include $(TOPDIR)/rules.mk

PKG_NAME:=pytorch
PKG_VERSION:=2.14.0
PKG_RELEASE:=1

#PKG_SOURCE:=pytorch-v$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://github.com/pytorch/pytorch/releases/download/v$(PKG_VERSION)
#PKG_HASH:=skip

PKG_SOURCE_URL:=https://github.com/pytorch/pytorch.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=08187d9e0fba026dc8217405802ab5381dc88d90
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause-Modification
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=numpy/host python-scikit-build-core/host python-packaging/host python-yaml/host python-typing-extensions/host python-six/host python-requests/host protobuf/host libfmt eigen python-pybind11

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

define Package/python3-pytorch
	SUBMENU:=Python
	SECTION:=lang
	CATEGORY:=Languages
	TITLE:=Tensors and Dynamic neural networks in Python with strong GPU acceleration
	DEPENDS:=+libatomic +libstdcpp +abseil-cpp +cpuinfo +gflags +glog +numactl +openmp +openblas +protobuf +sleef +libuv +python3-light +python3-filelock +python3-fsspec +python3-jinja2 +python3-networkx +python3-numpy +python3-sympy +python3-typing-extensions +python3-yaml +pytorch
	URL:=https://github.com/pytorch/pytorch
endef

define Package/python3-pytorch/description
	You can reuse your favorite Python packages such as NumPy, SciPy, and Cython to extend PyTorch when needed.
endef

PYTHON3_PKG_WHEEL_NAME:=torch
#PYTHON3_PKG_WHEEL_VERSION:=2.13.0a0+gitUnknown

TARGET_CFLAGS := $(filter-out -Os -pipe -mcpu=generic,$(TARGET_CFLAGS))
TARGET_CCFLAGS := $(filter-out -Os -pipe -mcpu=generic,$(TARGET_CCFLAGS))
TARGET_CXXFLAGS := $(filter-out -Os -pipe -mcpu=generic,$(TARGET_CXXFLAGS))

TARGET_CFLAGS += -Os -pipe -march=armv8-a+crc
TARGET_CCFLAGS += -Os -pipe -march=armv8-a+crc
TARGET_CXXFLAGS += -Os -pipe -march=armv8-a+crc

PYTHON3_PKG_SETUP_VARS += CMAKE_ARGS="-DSLEEF_LIBRARY="$(STAGING_DIR)/usr/lib" -Dpybind11_INCLUDE_DIR="$(STAGING_DIR)/usr/include" -DINSTALL_TEST=OFF -DBUILD_CUSTOM_PROTOBUF=OFF -DBUILD_SHARED_LIBS=ON -DUSE_SYSTEM_SLEEF=ON -DUSE_SYSTEM_PYBIND11=ON -DUSE_SYSTEM_EIGEN_INSTALL=ON -DUSE_SYSTEM_FMT=ON -DUSE_GLOG=ON -DUSE_GFLAGS=ON -DUSE_PRIORITIZED_TEXT_FOR_LD=OFF -DTORCH_BUILD_VERSION="$(PKG_VERSION)" -DPYTORCH_BUILD_VERSION="$(PKG_VERSION)" -DPYTORCH_BUILD_NUMBER=1 -DCAFFE2_CUSTOM_PROTOC_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/protoc" -DPROTOBUF_PROTOC_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/protoc" -DBUILD_TEST=OFF"

$(eval $(call Py3Package,python3-pytorch))
$(eval $(call BuildPackage,python3-pytorch))
$(eval $(call BuildPackage,python3-pytorch-src))
