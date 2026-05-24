include $(TOPDIR)/rules.mk

PKG_NAME:=open5gs
PKG_VERSION:=2.7.7
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/open5gs/open5gs/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=AGPL-3.0
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/open5gs
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Open5GS
	DEPENDS:=+libsctp +libgnutls +libgcrypt +libopenssl +mongo-c-driver +libyaml +libnghttp2 +libmicrohttpd-ssl +libcurl +libcurl-gnutls +libnghttp2 +libtins +libtalloc +libidn
	URL:=https://open5gs.org/
endef

define Package/open5gs/description
Open5GS is a C-language Open Source implementation for 5G Core and EPC, i.e. the core network of LTE/NR network (Release-17)
endef

define Package/open5gs/install
	$(INSTALL_DIR) $(1)/etc
	$(CP) $(MESON_BUILD_DIR)/configs/{open5gs,freeDiameter} $(1)/etc/
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/var/log/open5gs
	#$(CP) $(PKG_INSTALL_DIR)/var/log/* $(1)/var/log/
endef

$(eval $(call BuildPackage,open5gs))
