include $(TOPDIR)/rules.mk

PKG_NAME:=prrte
PKG_VERSION:=3.0.12
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/openpmix/prrte/releases/download/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/prrte
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=PMIx Reference RunTime Environment (PRRTE)
	DEPENDS:=+libstdcpp +libhwloc +libevent2-core +libevent2-pthreads +openpmix
	URL:=https://github.com/openpmix/prrte
endef

define Package/prrte/description
	PMIx Reference RunTime Environment (PRRTE)
endef

CONFIGURE_ARGS += \
	--prefix=/usr \
	--sysconfdir=/etc/prrte

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

define Package/prrte/install
	$(INSTALL_DIR) $(1)/etc
	$(CP) $(PKG_INSTALL_DIR)/etc/prrte $(1)/etc/
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,prrte))
