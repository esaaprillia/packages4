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

#PKG_BUILD_DEPENDS:=numpy/host python-scikit-build-core/host python-packaging/host python-yaml/host python-typing-extensions/host python-six/host python-requests/host protobuf/host eigen python-pybind11
#HOST_BUILD_DEPENDS:=numpy/host python-scikit-build-core/host python-packaging/host python-yaml/host python-typing-extensions/host python-six/host python-requests/host protobuf/host eigen/host python-pybind11/host

#PKG_BUILD_DEPENDS:=numpy/host python-scikit-build-core/host python-packaging/host python-yaml/host python-typing-extensions/host python-six/host python-requests/host protobuf/host eigen python-pybind11
#HOST_BUILD_DEPENDS:=HOST_BUILD_DEPENDS:=numpy/host numactl/host gflags/host glog/host libuv/host cpuinfo/host sleef/host openmp/host openblas/host protobuf/host eigen/host libfmt/host python-pybind11/host python-packaging/host python-requests/host python-scikit-build-core/host python-six/host python-typing-extensions/host  python-yaml/host
HOST_BUILD_DEPENDS:=numactl/host gflags/host glog/host libuv/host cpuinfo/host sleef/host openmp/host protobuf/host eigen/host libfmt/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk
include $(TOPDIR)/feeds/python/lang/python/python3-host-build.mk

define Package/pytorch
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Tensors and Dynamic neural networks in Python with strong GPU acceleration
	DEPENDS:=+libatomic +libstdcpp +abseil-cpp +cpuinfo +gflags +glog +numactl +openmp +openblas +protobuf +sleef +libuv
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
	#DEPENDS:=+python3-light +python3-filelock +python3-fsspec +python3-jinja2 +python3-networkx +python3-numpy +python3-sympy +python3-typing-extensions +python3-yaml +pytorch
	URL:=https://github.com/pytorch/pytorch
endef

define Package/python3-pytorch/description
	pytorch Python library
endef

export CMAKE_POLICY_VERSION_MINIMUM=3.5
export PYTORCH_BUILD_VERSION=$(PKG_VERSION)
export PYTORCH_BUILD_NUMBER=1

PYTHON3_HOST_BUILD_VARS += CMAKE_ARGS="-DSKBUILD_PROJECT_VERSION=$(PKG_VERSION) -DBUILD_PYTHON_ONLY=1"

CMAKE_HOST_OPTIONS += \
	-DBUILD_SHARED_LIBS=OFF \
	-DBUILD_CUSTOM_PROTOBUF=OFF \
	-DBUILD_PYTHON=OFF \
	-DBUILD_TEST=OFF \
	-DUSE_CUDA=OFF \
	-DUSE_SYSTEM_FMT=ON \
	-DUSE_GLOG=ON \
	-DUSE_GFLAGS=ON \
	-DUSE_ITT=OFF \
	-DUSE_MAGMA=OFF \
	-DUSE_MKLDNN=OFF \
	-DUSE_MPI=OFF \
	-DUSE_NCCL=OFF \
	-DUSE_PRIORITIZED_TEXT_FOR_LD=OFF \
	-DUSE_SYSTEM_CPUINFO=ON \
	-DUSE_SYSTEM_EIGEN_INSTALL=ON \
	-DUSE_SYSTEM_FMT=ON \
	-DUSE_SYSTEM_PYBIND11=ON \
	-DUSE_SYSTEM_SLEEF=ON \
	-DUSE_XCCL=OFF \
	-DUSE_XPU=OFF \
	-DCAFFE2_CUSTOM_PROTOC_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/protoc" \
	-DPROTOBUF_PROTOC_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/protoc" \
	-DPYTORCH_BUILD_VERSION=$(PKG_VERSION) \
	-DPYTORCH_BUILD_NUMBER=1 \
	-DTORCH_BUILD_VERSION=$(PKG_VERSION)

PYTHON3_HOST_BUILD:=0
PYTHON3_HOST_WHEEL_NAME:=torch
PYTHON3_HOST_WHEEL_VERSION:=2.15.0a0+gitunknown

define Host/Compile
	$(call Host/Compile/Default)
	#$(call Py3Host/Compile)
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,pytorch))
$(eval $(call Py3Package,python3-pytorch))
$(eval $(call BuildPackage,python3-pytorch))
$(eval $(call BuildPackage,python3-pytorch-src))
