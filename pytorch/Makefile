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

#PKG_BUILD_DEPENDS:=sleef
PKG_BUILD_DEPENDS:=protobuf/host sleef libfmt abseil-cpp cpuinfo eigen gflags glog libgomp libuv numactl openmp openmpi protobuf python-pybind11 python-filelock python-fsspec python-jinja2 python-networkx numpy python-sympy python-typing-extensions python-yaml vulkan-loader
PYTHON3_PKG_BUILD:=0

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

define Package/pytorch
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Tensors and Dynamic neural networks in Python with strong GPU acceleration
	DEPENDS:=+libstdcpp
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
	#DEPENDS:=+python3-light +boost-python3 +python3-numpy +pytorch
	URL:=https://github.com/pytorch/pytorch
endef

define Package/python3-pytorch/description
	pytorch Python library
endef

CMAKE_OPTIONS += \
	-DPYTHON=ON \
	-DBUILD_SHARED_LIBS=ON -DUSE_PRIORITIZED_TEXT_FOR_LD=OFF -DUSE_SYSTEM_SLEEF=ON

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
