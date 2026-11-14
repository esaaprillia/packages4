include $(TOPDIR)/rules.mk

PKG_NAME:=nnpack
#PKG_VERSION:=2023-02-02
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/Maratyszcza/NNPACK.git
PKG_SOURCE_DATE:=2023-02-02
PKG_SOURCE_VERSION:=70a77f485e8b934224f3a79efd8edcd84cd377b8
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_DEPENDS:=fxdiv fp16 psimd python-peachpy/host
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/nnpack
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Acceleration package for neural networks on multi-core CPUs
	DEPENDS:=+libstdcpp +cpuinfo +pthreadpool
	URL:=https://github.com/Maratyszcza/NNPACK
endef

define Package/nnpack/description
NNPACK is an acceleration package for neural network computations.
NNPACK aims to provide high-performance implementations of convnet layers for multi-core CPUs.
endef

CMAKE_OPTIONS += \
	-DNNPACK_LIBARY_TYPE=shared \
	-DNNPACK_BUILD_TESTS=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/nnpack/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,nnpack))
