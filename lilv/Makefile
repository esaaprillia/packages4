include $(TOPDIR)/rules.mk

PKG_NAME:=lilv
PKG_VERSION:=0.28.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://download.drobilla.net/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=ISC
PKG_LICENSE_FILES:=COPYING

PYTHON3_PKG_BUILD:=0
PKG_BUILD_DEPENDS:=meson/host

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/meson.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

define Package/lilv
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=LV2 host library
	URL:=https://lv2plug.in/
	DEPENDS:= \
	+libstdcpp \
	+libsndfile \
	+lv2 \
	+serd \
	+sord \
	+sratom \
	+zix
endef

define Package/lilv/description
	Lilv is a C library to make the use of LV2 plugins as simple as possible for applications.
endef

define Package/python3-lilv
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A C library interface to the LV2 plug-in standard - Python interface
  URL:=https://lv2plug.in/
  DEPENDS:=+python3-light +lilv
endef

define Package/python3-lilv/description
	A C library interface to the LV2 plug-in standard - Python interface
endef

MESON_VARS += $(PYTHON3_VARS)

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include 
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/lilv-0.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/lilv-0.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/lilv-0.pc
endef

define Package/lilv/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,lilv))
$(eval $(call Py3Package,python3-lilv))
$(eval $(call BuildPackage,python3-lilv))
$(eval $(call BuildPackage,python3-lilv-src))
