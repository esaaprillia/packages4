include $(TOPDIR)/rules.mk

PKG_NAME:=docbook-xsl
PKG_VERSION:=1.79.2
PKG_RELEASE:=1

PKG_SOURCE:=docbook-xsl-nons-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/docbook/xslt10-stylesheets/releases/download/release/$(PKG_VERSION)/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LicenseRef-docbook-XSL
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DIR:=$(BUILD_DIR)/docbook-xsl-nons-$(PKG_VERSION)

PKG_BUILD_DEPENDS:=libxml2/host libxslt/host
HOST_BUILD_DEPENDS:=libxml2/host libxslt/host

HOST_BUILD_PARALLEL:=1
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/docbook-xsl
	SECTION:=doc
	CATEGORY:=DocBook
	DEPENDS:=+libxml2-utils +libxslt
	TITLE:=XSLT 1.0 Stylesheets for DocBook
	URL:=https://github.com/docbook/xslt10-stylesheets
endef

define Package/docbook-xsl/description
	DocBook XSLT 1.0 Stylesheets
endef

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/* \
	  $(1)/usr/share/
endef

define Package/docbook-xsl/install
	$(INSTALL_DIR) \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/* \
	  $(1)/usr/share/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,docbook-xsl))
