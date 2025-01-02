include $(TOPDIR)/rules.mk

PKG_NAME:=ade
PKG_VERSION:=0.1.2d
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/opencv/ade/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/ade
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=ADE Framework
	DEPENDS:=
	URL:=https://github.com/opencv/ade
endef

define Package/ade/description
ADE Framework is a graph construction, manipulation, and processing framework.
ADE Framework is suitable for organizing data flow processing and execution.
endef

CFLAGS="$(TARGET_CFLAGS) -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2

CMAKE_OPTIONS += \
	-DENABLE_ADE_TESTING=OFF \
	-DBUILD_ADE_TUTORIAL=OFF \
	-DFORCE_ADE_ASSERTS=OFF \
	-DBUILD_ADE_DOCUMENTATION=OFF \
	-DBUILD_WITH_STATIC_CRT=OFF

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/* \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*,cmake} \
	  $(1)/usr/lib/
endef

define Package/ade/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,ade))
