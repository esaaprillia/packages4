#
# Copyright (C) 2013 
#                           
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=libmemcached
PKG_VERSION:=1.1.4
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/awesomized/libmemcached/tar.gz/$(PKG_VERSION)?
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=COPYING
PKG_CPE_ID:=cpe:/a:awesome:libmemcached

#PKG_INSTALL:=1
#PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/libmemcached/Default
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Client library to the memcached server
	URL:=https://awesomized.github.io/libmemcached/
endef

define Package/libmemcached
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Client library to the memcached server
	URL:=https://awesomized.github.io/libmemcached/
	DEPENDS:=+libstdcpp +libevent2
endef

define Package/libhashkit
	$(call Package/libmemcached/Default)
	DEPENDS:=
	TITLE:=libmemcached hashing functions and algorithms
endef

define Package/libmemcached-protocol
	$(call Package/libmemcached/Default)
	DEPENDS:=
	TITLE:=libmemcached protocol
endef

define Package/libmemcached-tools
	$(call Package/libmemcached/Default)
	DEPENDS:=
	TITLE:=Commandline tools for talking to memcached via libmemcached
endef

define Package/libmemcached-util
	$(call Package/libmemcached/Default)
	DEPENDS:=
	TITLE:=library implementing connection pooling for libmemcached
endef

define Package/libmemcached/description
Client library and command line tools for memcached server
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include $(1)/usr
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib $(1)/usr
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share $(1)/usr
endef

define Package/libmemcached/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libmemcached.so* $(1)/usr/lib/
endef

define Package/libhashkit/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libhashkit.so* $(1)/usr/lib/
endef

define Package/libmemcached-protocol/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libmemcachedprotocol.so* $(1)/usr/lib/
endef

define Package/libmemcached-tools/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
endef

define Package/libmemcached-util/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libmemcachedutil.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libmemcached))
$(eval $(call BuildPackage,libhashkit))
$(eval $(call BuildPackage,libmemcached-protocol))
$(eval $(call BuildPackage,libmemcached-tools))
$(eval $(call BuildPackage,libmemcached-util))