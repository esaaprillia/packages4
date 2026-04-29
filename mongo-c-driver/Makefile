include $(TOPDIR)/rules.mk

PKG_NAME:=mongo-c-driver
PKG_VERSION:=1.30.8
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/mongodb/mongo-c-driver/releases/download/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=COPYING

CMAKE_BINARY_SUBDIR:=build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/mongo-c-driver
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=The Official MongoDB driver for C language
	DEPENDS:=+libsasl2 +libopenssl +snappy +libzstd +utf8proc +zlib
	URL:=https://github.com/mongodb/mongo-c-driver/
endef

define Package/mongo-c-driver/description
mongo-c-driver is a project that includes two libraries:
libmongoc, a client library written in C for MongoDB.
libbson, a library providing useful routines related to building, parsing, and iterating BSON documents.
endef

CMAKE_OPTIONS += \
	-DENABLE_TESTS=OFF \
	-DENABLE_EXAMPLES=OFF \
	-DENABLE_AUTOMATIC_INIT_AND_CLEANUP=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/mongo-c-driver/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/mongoc-stat $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,mongo-c-driver))
