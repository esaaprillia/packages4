include $(TOPDIR)/rules.mk

PKG_NAME:=casaos
PKG_VERSION:=0.4.15
PKG_RELEASE:=1

PKG_SOURCE:=CasaOS-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/IceWhaleTech/CasaOS/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Tianling Shen <cnsztl@immortalwrt.org>
PKG_LICENSE:=MPL-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/CasaOS-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0
PKG_BUILD_FLAGS:=no-mips16

#GO_PKG:=github.com/IceWhaleTech/CasaOS
GO_PKG_LDFLAGS:=-s -w
#GO_PKG_BUILD_PKG:=$(GO_PKG)
GO_PKG_GO_GENERATE:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Package/casaos
  TITLE:=CasaOS - Your Personal Cloud
  SECTION:=net
  CATEGORY:=Network
  URL:=https://casaos.zimaspace.com/
  DEPENDS:=$(GO_ARCH_DEPENDS) +ca-bundle
endef

define Package/casaos/description
  CasaOS - A simple, easy-to-use, elegant open-source Personal Cloud system.
endef

define Package/casaos/conffiles
/etc/casaos/
/etc/casaos/casaos.conf
endef

define Package/casaos/install
	$(call GoPackage/Package/Install/Bin,$(PKG_INSTALL_DIR))
	$(INSTALL_DIR) $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/main $(1)/usr/bin/casaos
endef

$(eval $(call BuildPackage,casaos))
