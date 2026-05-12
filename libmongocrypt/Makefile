include $(TOPDIR)/rules.mk

PKG_NAME:=libmongocrypt
PKG_VERSION:=1.18.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/mongodb/libmongocrypt/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR:=build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/libmongocrypt
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=The companion C library for client side encryption in drivers.
	DEPENDS:=+libsasl2 +libopenssl +snappy +libzstd +utf8proc +zlib
	URL:=https://github.com/mongodb/libmongocrypt
endef

define Package/libmongocrypt/description
Required C library for Client Side and Queryable Encryption in MongoDB
endef

CMAKE_OPTIONS += \
	-DBUILD_VERSION="$(PKG_VERSION)" \
	-DENABLE_TESTS=OFF \
	-DENABLE_ONLINE_TESTS=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/libmongocrypt/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libmongocrypt))
