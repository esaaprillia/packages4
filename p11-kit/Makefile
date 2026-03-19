include $(TOPDIR)/rules.mk

PKG_NAME:=p11-kit
PKG_VERSION:=0.26.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/p11-glue/p11-kit/releases/download/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Daniel Golle <daniel@makrotopia.org>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=libtasn1/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/p11-kit
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=Provides a way to load and enumerate PKCS#11 modules.
  URL:=https://github.com/p11-glue/p11-kit
  DEPENDS:=+libtasn1 +libffi
endef

define Package/p11-kit/description
  p11-kit aims to solve problems with coordinating the use of PKCS #11 by different components or libraries living in the same process, by providing a way to load and enumerate PKCS #11 modules, as well as a standard configuration setup for installing PKCS #11 modules in such a way that they're discoverable.
endef

MESON_ARGS += \
	-Dbackend_max_links=4 \
	-Dlibffi=enabled \
	-Dtrust_module=enabled \
	-Dtest=false \
	-Dtrust_paths=/etc/ssl/certs/ca-certificates.crt

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/
	$(CP) $(PKG_INSTALL_DIR)/usr/include/p11-kit-1 $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkcs11
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkcs11/*.so* $(1)/usr/lib/pkcs11/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/*.pc $(1)/usr/lib/pkgconfig/
endef

define Package/p11-kit/install
	$(INSTALL_DIR) $(1)/etc
	$(CP) $(PKG_INSTALL_DIR)/etc/pkcs11 $(1)/etc/
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib
	$(INSTALL_DIR) $(1)/usr/lib/pkcs11
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkcs11/*.so* $(1)/usr/lib/pkcs11/
	$(INSTALL_DIR) $(1)/usr/libexec
	$(CP) $(PKG_INSTALL_DIR)/usr/libexec/p11-kit $(1)/usr/libexec/
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/p11-kit $(1)/usr/share/
endef

$(eval $(call BuildPackage,p11-kit))
