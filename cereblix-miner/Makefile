include $(TOPDIR)/rules.mk

PKG_NAME:=cereblix-miner
PKG_VERSION:=2.0
PKG_RELEASE:=1

#PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://github.com/symisc/sod/archive/$(PKG_VERSION)
#PKG_HASH:=skip

PKG_SOURCE_URL:=https://github.com/CereblixCRB/cereblix-miner.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=9a05f8968be0507798561930c795bce80d4e8d8a
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk

define Package/cereblix-miner
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=nmminer — fast NeuroMorph CPU miner for Cereblix (CRB)
	DEPENDS:=+libpthread +libstdcpp
	URL:=https://github.com/CereblixCRB/cereblix-miner
endef

define Package/cereblix-miner/description
Cereblix (CRB) NeuroMorph CPU miner: desktop, HiveOS, and a universal Android app (all ABIs, hardware AES/NEON, thread and core selection).
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) \
		CC="$(TARGET_CC)" \
		ARCH="$(ARCH)"
endef

define Package/cereblix-miner/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/nmminer $(1)/usr/bin/
endef

$(eval $(call BuildPackage,cereblix-miner))
