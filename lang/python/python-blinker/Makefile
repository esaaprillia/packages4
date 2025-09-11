#
# Copyright (C) 2013 
#                           
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=ccminer
PKG_VERSION:=3.8.0
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/monkins1010/ccminer.git
PKG_SOURCE_DATE:=2023-06-05
PKG_SOURCE_VERSION:=1667394ad4120d64b0c57367e71cb832ad2e3645
PKG_MIRROR_HASH:=skip


PKG_MAINTAINER:=
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/ccminer
  SECTION:=net
  CATEGORY:=Network
  TITLE:=CPU ONLY CCminer Verushash2.2
  URL:=https://github.com/monkins1010/ccminer
  DEPENDS:= \
	+libpthread +libncurses +jansson +zlib +libstdcpp +curl +libopenssl
endef

define Package/ccminer/description
ARM CPU ONLY CCminer Verushash2.2
endef

define Build/Configure
	(cd $(PKG_BUILD_DIR); ./autogen.sh );
	$(call Build/Configure/Default)
endef

define Package/ccminer/install
	$(INSTALL_DIR) $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/ccminer $(1)/usr/bin/
endef

$(eval $(call BuildPackage,ccminer))