include $(TOPDIR)/rules.mk

PKG_NAME:=xmlto
PKG_VERSION:=0.0.28
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://releases.pagure.org/xmlto/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0-or-later
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=libxslt/host
HOST_BUILD_DEPENDS:=libxslt/host

PKG_INSTALL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/xmlto
	SECTION:=utils
	CATEGORY:=Utilities
	DEPENDS:=+libxml2 +libxslt
	TITLE:=Convert xml to many other formats
	URL:=https://pagure.io/xmlto/
endef

define Package/xmlto/description
	Convert xml to many other formats
endef

define Package/xmlto/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/{xmlto,xmlif} $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/xmlto $(1)/usr/share/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,xmlto))
