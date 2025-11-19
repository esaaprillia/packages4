include $(TOPDIR)/rules.mk

PKG_NAME:=marisa-trie
PKG_VERSION:=0.3.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/s-yata/marisa-trie/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause OR LGPL-2.1-or-later
PKG_LICENSE_FILES:=COPYING.md

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/marisa-trie
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=MARISA: Matching Algorithm with Recursively Implemented StorAge
	DEPENDS:=+libstdcpp
	URL:=https://github.com/s-yata/marisa-trie
endef

define Package/marisa-trie/description
	Matching Algorithm with Recursively Implemented StorAge (MARISA) is a static and space-efficient trie data structure.
endef

CMAKE_OPTIONS += \
	-DBUILD_TESTING=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/marisa.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/marisa.pc
endef

define Package/marisa-trie/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,marisa-trie))
