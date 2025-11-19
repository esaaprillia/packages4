include $(TOPDIR)/rules.mk

PKG_NAME:=onnx
PKG_VERSION:=1.19.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/onnx/onnx/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=protobuf/host

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/onnx
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Open standard for machine learning interoperability
	DEPENDS:=+libstdcpp +protobuf +abseil-cpp
	URL:=https://onnx.ai/
endef

define Package/onnx/description
	Open Neural Network Exchange (ONNX) is an open ecosystem that empowers AI developers to choose the right tools as their project evolves.
endef

CMAKE_OPTIONS += \
    -DCMAKE_SKIP_RPATH=TRUE \
    -DCMAKE_VERBOSE_MAKEFILE=ON \
    -DONNX_USE_PROTOBUF_SHARED_LIBS=ON \
    -DBUILD_SHARED_LIBS=ON \
    -Wno-dev

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/onnx/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,onnx))
