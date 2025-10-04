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

define Build/Configure
endef

define Build/Compile
endef

define Host/Configure
endef

define Host/Compile
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/share/xml/docbook/stylesheet/docbook-xsl
	$(CP) \
	  $(PKG_BUILD_DIR)/{assembly,common,eclipse,epub,epub3,fo,highlighting,html,htmlhelp,images,javahelp,lib,manpages,params,profiling,roundtrip,template,slides,website,xhtml,xhtml-1_1,xhtml5,catalog.xml,VERSION,VERSION.xsl} \
	  $(1)/usr/share/xml/docbook/stylesheet/docbook-xsl/
endef

define Host/Install
	$(INSTALL_DIR) $(STAGING_DIR_HOSTPKG)/share/xml/docbook/stylesheet/docbook-xsl
	$(CP) \
	  $(HOST_BUILD_DIR)/{assembly,common,eclipse,epub,epub3,fo,highlighting,html,htmlhelp,images,javahelp,lib,manpages,params,profiling,roundtrip,template,slides,website,xhtml,xhtml-1_1,xhtml5,catalog.xml,VERSION,VERSION.xsl} \
	  $(STAGING_DIR_HOSTPKG)/share/xml/docbook/stylesheet/docbook-xsl/
endef

define Package/docbook-xsl/install
	$(INSTALL_DIR) $(1)/usr/share/xml/docbook/stylesheet/docbook-xsl
	$(CP) \
	  $(PKG_BUILD_DIR)/{assembly,common,eclipse,epub,epub3,fo,highlighting,html,htmlhelp,images,javahelp,lib,manpages,params,profiling,roundtrip,template,slides,website,xhtml,xhtml-1_1,xhtml5,catalog.xml,VERSION,VERSION.xsl} \
	  $(1)/usr/share/xml/docbook/stylesheet/docbook-xsl/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,docbook-xsl))
