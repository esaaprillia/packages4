#
# Copyright (C) 2013 
#                           
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=kaspad
PKG_VERSION:=0.12.15
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/kaspanet/kaspad/tar.gz/v$(PKG_VERSION)?
PKG_HASH:=skip

PKG_MAINTAINER:=
PKG_LICENSE:=MPL-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0

GO_PKG:=github.com/kaspanet/kaspad
GO_PKG_BUILD_PKG:= \
	$(GO_PKG)/cmd/genkeypair \
	$(GO_PKG)/cmd/kaspactl \
	$(GO_PKG)/cmd/kaspaminer \
	$(GO_PKG)/cmd/kaspawallet \
	$(GO_PKG)

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Package/kaspad
  TITLE:=Kaspad is the reference full node Kaspa implementation written in Go (golang).
  SECTION:=net
  CATEGORY:=Network
  URL:=https://github.com/kaspanet/kaspad
  DEPENDS:=$(GO_ARCH_DEPENDS) +ca-bundle
endef

define Package/kaspad/description
  Kaspa is an attempt at a proof-of-work cryptocurrency with instant confirmations and sub-second block times. It is based on the PHANTOM protocol, a generalization of Nakamoto consensus.
endef

define Package/kaspad/install
	$(call GoPackage/Package/Install/Bin,$(PKG_INSTALL_DIR))
	$(INSTALL_DIR) $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
endef

$(eval $(call BuildPackage,kaspad))
