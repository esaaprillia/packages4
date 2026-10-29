include $(TOPDIR)/rules.mk

PKG_NAME:=sqlcipher
PKG_VERSION:=4.20.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/sqlcipher/sqlcipher/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt LICENSE.md

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1
PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk

define Package/sqlcipher
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=SQLite extension that provides transparent 256-bit AES encryption of database files
	DEPENDS:=+libopenssl +libreadline +tcl +zlib
	URL:=https://github.com/sqlcipher/sqlcipher
endef

define Package/sqlcipher/description
SQLCipher is a standalone fork of SQLite that adds 256 bit AES encryption of database files and other security features.
endef

TARGET_CFLAGS += \
	-DSQLITE_HAS_CODEC \
	-DSQLITE_TEMP_STORE=2 \
	-DSQLCIPHER_TEST \
	-DSQLITE_EXTRA_INIT=sqlcipher_extra_init \
	-DSQLITE_EXTRA_SHUTDOWN=sqlcipher_extra_shutdown

TARGET_CPPFLAGS += \
	-DSQLITE_ENABLE_COLUMN_METADATA=1 \
	-DSQLITE_ENABLE_UNLOCK_NOTIFY \
	-DSQLITE_ENABLE_DBSTAT_VTAB=1 \
	-DSQLITE_ENABLE_FTS3_TOKENIZER=1 \
	-DSQLITE_SECURE_DELETE \
	-DSQLITE_ENABLE_STMTVTAB \
	-DSQLITE_MAX_VARIABLE_NUMBER=250000 \
	-DSQLITE_MAX_EXPR_DEPTH=10000 \
	-DSQLITE_ENABLE_MATH_FUNCTIONS

TARGET_LDFLAGS += -lcrypto

CONFIGURE_ARGS = \
	--build=$(GNU_HOST_NAME) \
	--host=$(GNU_TARGET_NAME) \
	--prefix=/usr \
	--with-tempstore=yes \
	--disable-static \
	--with-tcl="$(STAGING_DIR)/usr/lib" \
	--with-tclsh="$(STAGING_DIR_HOSTPKG)/bin" \
	--fts3 \
	--fts4 \
	--fts5 \
	--rtree

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/sqlcipher $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/sqlcipher.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/sqlcipher.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/sqlcipher.pc
endef

define Package/sqlcipher/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/sqlcipher $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/{*.so*,tcl*} $(1)/usr/lib/
endef

$(eval $(call BuildPackage,sqlcipher))
