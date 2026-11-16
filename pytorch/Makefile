include $(TOPDIR)/rules.mk

PKG_NAME:=pytorch
PKG_VERSION:=2.15.0
PKG_RELEASE:=1

PKG_SOURCE:=pytorch-v$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/pytorch/pytorch/releases/download/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause-Modification
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/pytorch-v$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/pytorch-v$(PKG_VERSION)

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_DEPENDS:=numpy/host protobuf/host eigen python-pybind11/host python-packaging/host python-requests/host python-scikit-build-core/host python-six/host python-typing-extensions/host python-yaml/host
HOST_BUILD_DEPENDS:=numpy/host gflags/host glog/host libuv/host cpuinfo/host sleef/host openmp/host openblas/host protobuf/host eigen/host python-pybind11/host python-packaging/host python-requests/host python-scikit-build-core/host python-six/host python-typing-extensions/host python-yaml/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk
include $(TOPDIR)/feeds/python/lang/python/python3-host-build.mk

define Package/libtorch
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Tensors and Dynamic neural networks in Python with strong GPU acceleration
	DEPENDS:=+libatomic +libstdcpp +libpython3 +abseil-cpp +cpuinfo +gflags +glog +openmp +openblas +protobuf +sleef +libuv
	URL:=https://github.com/pytorch/pytorch
endef

define Package/libtorch/description
	You can reuse your favorite Python packages such as NumPy, SciPy, and Cython to extend PyTorch when needed.
endef

define Package/python3-torch
	SUBMENU:=Python
	SECTION:=lang
	CATEGORY:=Languages
	TITLE:=pytorch Python library
	#DEPENDS:=+python3-light +python3-filelock +python3-fsspec +python3-jinja2 +python3-networkx +python3-numpy +python3-sympy +python3-typing-extensions +python3-yaml +libtorch
	DEPENDS:=+libtorch
	URL:=https://github.com/pytorch/pytorch
endef

define Package/python3-torch/description
	pytorch Python library
endef

TARGET_CFLAGS := $(filter-out -Os -pipe -mcpu=generic,$(TARGET_CFLAGS))
TARGET_CCFLAGS := $(filter-out -Os -pipe -mcpu=generic,$(TARGET_CCFLAGS))
TARGET_CXXFLAGS := $(filter-out -Os -pipe -mcpu=generic,$(TARGET_CXXFLAGS))

TARGET_CFLAGS += -Os -pipe -march=armv8-a
TARGET_CCFLAGS += -Os -pipe -march=armv8-a
TARGET_CXXFLAGS += -Os -pipe -march=armv8-a

export CMAKE_POLICY_VERSION_MINIMUM=3.5
export PYTORCH_BUILD_VERSION=$(PKG_VERSION)
export PYTORCH_BUILD_NUMBER=1
export TORCH_BUILD_VERSION=$(PKG_VERSION)

PYTHON3_PKG_BUILD_VARS += CMAKE_ARGS="-DSKBUILD_PROJECT_VERSION=$(PKG_VERSION)"

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DBUILD_CUSTOM_PROTOBUF=OFF \
	-DBUILD_PYTHON=ON \
	-DBUILD_TEST=OFF \
	-DUSE_CUDA=OFF \
	-DUSE_GLOG=ON \
	-DUSE_GFLAGS=ON \
	-DUSE_ITT=OFF \
	-DUSE_MAGMA=OFF \
	-DUSE_MKLDNN=OFF \
	-DUSE_MPI=OFF \
	-DUSE_NCCL=OFF \
	-DUSE_NUMA=OFF \
	-DUSE_PRIORITIZED_TEXT_FOR_LD=OFF \
	-DUSE_SYSTEM_CPUINFO=ON \
	-DUSE_SYSTEM_EIGEN_INSTALL=ON \
	-DUSE_SYSTEM_PYBIND11=ON \
	-DUSE_SYSTEM_SLEEF=ON \
	-DUSE_XCCL=OFF \
	-DUSE_XPU=OFF \
	-DCAFFE2_CUSTOM_PROTOC_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/protoc" \
	-DPROTOBUF_PROTOC_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/protoc" \
	-DCMAKE_INSTALL_PREFIX="$(PKG_INSTALL_DIR)/usr" \
	-DCMAKE_FIND_ROOT_PATH="$(CMAKE_FIND_ROOT_PATH);$(CMAKE_HOST_FIND_ROOT_PATH)" \
	-DCMAKE_POSITION_INDEPENDENT_CODE=ON

PYTHON3_PKG_BUILD:=0
PYTHON3_PKG_WHEEL_NAME:=torch
PYTHON3_PKG_WHEEL_VERSION:=2.15.0

define Build/Compile
	$(call Build/Compile/Default)
	$(call Build/Install/Default)
	$(call Py3Build/Compile)
endef

PYTHON3_HOST_BUILD_VARS += CMAKE_ARGS="-DSKBUILD_PROJECT_VERSION=$(PKG_VERSION)"

CMAKE_HOST_OPTIONS += \
	-DBUILD_SHARED_LIBS=OFF \
	-DBUILD_CUSTOM_PROTOBUF=OFF \
	-DBUILD_PYTHON=ON \
	-DBUILD_TEST=OFF \
	-DUSE_CUDA=OFF \
	-DUSE_GLOG=ON \
	-DUSE_GFLAGS=ON \
	-DUSE_ITT=OFF \
	-DUSE_MAGMA=OFF \
	-DUSE_MKLDNN=OFF \
	-DUSE_MPI=OFF \
	-DUSE_NCCL=OFF \
	-DUSE_NUMA=OFF \
	-DUSE_PRIORITIZED_TEXT_FOR_LD=OFF \
	-DUSE_SYSTEM_CPUINFO=ON \
	-DUSE_SYSTEM_EIGEN_INSTALL=ON \
	-DUSE_SYSTEM_PYBIND11=ON \
	-DUSE_SYSTEM_SLEEF=ON \
	-DUSE_XCCL=OFF \
	-DUSE_XPU=OFF \
	-DCAFFE2_CUSTOM_PROTOC_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/protoc" \
	-DPROTOBUF_PROTOC_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/protoc" \
	-DCMAKE_POSITION_INDEPENDENT_CODE=ON

PYTHON3_HOST_BUILD:=0
PYTHON3_HOST_WHEEL_NAME:=torch
PYTHON3_HOST_WHEEL_VERSION:=2.15.0

define Host/Compile
	$(call Host/Compile/Default)
	$(call Host/Install/Default)
	$(call Py3Host/Compile)
endef

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/libtorch/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,libtorch))
$(eval $(call Py3Package,python3-torch))
$(eval $(call BuildPackage,python3-torch))
$(eval $(call BuildPackage,python3-torch-src))
