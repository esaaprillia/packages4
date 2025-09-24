include $(TOPDIR)/rules.mk

PKG_NAME:=xinfc
PKG_VERSION:=2024-01-29
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/Caian/xinfc/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk

define Package/xinfc
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Tools for interfacing with the NFC chip on Xiaomi routers
	DEPENDS:=+libstdcpp
	URL:=https://github.com/Caian/xinfc
endef

define Package/xinfc/description
	Some Xiaomi routers are NFC capable. This a convenient way to share network information, requiring only proximity to the router. While practical, the stock router firmware is not flexible, so, for instance, you can't tell it to share the guest network credentials instead of the main one.
endef

define Build/Compile
	( cd $(PKG_BUILD_DIR) ; \
		$(TARGET_CXX) -O2 -Wall -Iinclude src/xinfc-wsc.cpp -o xinfc-wsc)
endef

define Package/xinfc/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/xinfc-wsc $(1)/usr/bin/
endef

$(eval $(call BuildPackage,xinfc))
