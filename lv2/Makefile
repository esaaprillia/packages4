include $(TOPDIR)/rules.mk

PKG_NAME:=lv2
PKG_VERSION:=1.18.10
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://lv2plug.in/spec/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=ISC
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=python-lxml/host python-markdown/host python-pygments/host python-rdflib/host

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/meson.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

define Package/lv2
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=The LV2 audio plugin specification
	URL:=https://lv2plug.in/
	DEPENDS:= \
	+libstdcpp \
	+libcairo \
	+glib2 \
	+libsamplerate \
	+libsndfile \
	+python3-light \
	+python3-lxml \
	+python3-markdown \
	+python3-pygments \
	+python3-rdflib
endef

define Package/lv2/description
	LV2 is a plugin standard for audio systems.
endef

MESON_VARS += $(PYTHON3_VARS)

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include 
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/lv2 $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/lv2.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/lv2.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/lv2.pc
endef

define Package/lv2/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/lv2 $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/* $(1)/usr/share/
endef

$(eval $(call BuildPackage,lv2))
