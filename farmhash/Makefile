include $(TOPDIR)/rules.mk

PKG_NAME:=farmhash
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/google/farmhash.git
PKG_SOURCE_VERSION:=0d859a811870d10f53a594927d0d0b97573ad06d
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1
PKG_FIXUP:=autoreconf
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/farmhash
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Automatically exported from code.google.com/p/farmhash
	DEPENDS:=+libstdcpp
	URL:=https://github.com/google/farmhash
endef

define Package/farmhash/description
A general overview of hash functions and their use is available in the file Understanding_Hash_Functions in this directory.  It may be helpful to read it before using FarmHash.
endef

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/farmhash.h \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

define Package/farmhash/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,farmhash))
