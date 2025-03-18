include $(TOPDIR)/rules.mk

PKG_NAME:=mysql
PKG_VERSION:=9.2.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://dev.mysql.com/get/Downloads/MySQL-9.2/
PKG_HASH:=skip

PKG_MAINTAINER:=Jo-Philipp Wich <jo@mein.io>
PKG_LICENSE:=GPL-2.0

PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_DEPENDS:=boost rapidjson protobuf/host
HOST_BUILD_DEPENDS:=readline/host ncurses/host libtirpc/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/libmysqlclient/Default
  SECTION:=libs
  CATEGORY:=Libraries
  DEPENDS:=+zlib
  TITLE:=MySQL client library
  URL:=http://dev.mysql.com/
endef

define Package/mysql-server
  SECTION:=utils
  CATEGORY:=Utilities
  DEPENDS:=+libmysqlclient +libpthread +libaio +libncurses +libreadline +libedit +icu +libevent2 +liblz4 +protobuf +libopenssl +libzstd +libsasl2 +libfido2 +libtirpc +libopenldap +libcurl +libkqueue +re2
  TITLE:=MySQL Server
  URL:=http://dev.mysql.com/
  SUBMENU:=database
endef

define Package/libmysqlclient
  $(call Package/libmysqlclient/Default)
endef

define Package/libmysqlclient-r
  $(call Package/libmysqlclient/Default)
  TITLE += threadsafe
  DEPENDS+= +libpthread
endef

TARGET_CFLAGS += $(FPIC)

define Build/Prepare
	$(call Build/Prepare/Default)
	$(RM) $(STAGING_DIR)/usr/bin/protoc*
	$(CP) $(STAGING_DIR_HOSTPKG)/bin/protoc* $(STAGING_DIR)/usr/bin/
endef

CMAKE_HOST_OPTIONS += \
	-DHAVE_UNIX_DNS_SRV=0

CMAKE_OPTIONS += \
	-DCMAKE_CROSSCOMPILING=TRUE \
	-DSTACK_DIRECTION=1 \
	-DDEFAULT_CHARSET=utf8mb4 \
	-DDEFAULT_COLLATION=utf8mb4_general_ci \
	-DINSTALL_DOCDIR=share/doc/mysql \
	-DINSTALL_DOCREADMEDIR=share/doc/mysql \
	-DINSTALL_INFODIR=share/info \
	-DINSTALL_MANDIR=share/man \
	-DINSTALL_MYSQLSHAREDIR=share/mysql \
	-DINSTALL_MYSQLTESTDIR="" \
	-DINSTALL_PAMDATADIR="/etc/security" \
	-DINSTALL_PAMDIR="/lib/security" \
	-DINSTALL_PLUGINDIR=lib/mysql/plugin \
	-DINSTALL_PREFIX="/usr" \
	-DINSTALL_SBINDIR=bin \
	-DINSTALL_SCRIPTDIR=bin \
	-DINSTALL_SQLBENCHDIR="" \
	-DINSTALL_SUPPORTFILESDIR=share/mysql \
	-DINSTALL_UNIX_ADDRDIR="/var/run/mysql/mysql.sock" \
	-DMYSQL_DATADIR=/srv/mysql \
	-DMYSQL_UNIX_ADDR="/var/run/mysql/mysql.sock" \
	-DWITH_BOOST=system \
	-DWITH_CURL=system \
	-DWITH_EDITLINE=system \
	-DWITH_FIDO=system \
	-DWITH_ICU=system \
	-DWITH_LIBEVENT=system \
	-DWITH_LZ4=system \
	-DWITH_PROTOBUF=system \
	-DWITH_RAPIDJSON=system \
	-DWITH_RE2=system \
	-DWITH_SSL=system \
	-DWITH_UNIT_TESTS=OFF \
	-DWITH_ZLIB=system \
	-DWITH_ZSTD=system \
	-DHAVE_C_FLOATING_POINT_FUSED_MADD_EXITCODE=0 \
	-DHAVE_CXX_FLOATING_POINT_FUSED_MADD_EXITCODE=0 \
	-DHAVE_SETNS_EXITCODE=0 \
	-DHAVE_CLOCK_GETTIME_EXITCODE=0 \
	-DHAVE_CLOCK_REALTIME_EXITCODE=0 \
	-DHAVE_RAPIDJSON_WITH_STD_REGEX_EXITCODE=0 \
	-DHAVE_FALLOC_PUNCH_HOLE_AND_KEEP_SIZE_EXITCODE=0 \
	-DHAVE___BUILTIN_FFS_EXITCODE=0

define Build/InstallDev
	$(INSTALL_DIR) $(2)/bin $(1)/usr/bin $(1)/usr/include $(1)/usr/lib
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/mysql_config $(1)/usr/bin/
	ln -sf $(STAGING_DIR)/usr/bin/mysql_config $(2)/bin/
	$(CP) $(PKG_INSTALL_DIR)/usr/include/mysql $(1)/usr/include/
	# NOTE: needed for MySQL-Python
	$(CP) $(PKG_BUILD_DIR)/include/mysqld_error.h $(1)/usr/include/mysql/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/mysql $(1)/usr/lib/
	rm -f $(1)/usr/lib/mysql/libmysqlclient.la
endef

define Package/libmysqlclient/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/mysql/libmysqlclient.so.* $(1)/usr/lib/
endef

define Package/libmysqlclient-r/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/mysql/libmysqlclient_r.so.* $(1)/usr/lib/
endef

define Package/mysql-server/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/mysql $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/lib/mysqld $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/myisamchk $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/mysqladmin $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/mysqldump $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/mysql_install_db $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/my_print_defaults $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/etc/init.d/
	$(INSTALL_BIN) files/mysqld.init $(1)/etc/init.d/mysqld
	$(INSTALL_CONF) conf/my.cnf $(1)/etc/
	$(INSTALL_DIR) $(1)/usr/share/mysql
	$(INSTALL_DIR) $(1)/usr/share/mysql/english
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/share/mysql/english/errmsg.sys $(1)/usr/share/mysql/english
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/share/mysql/fill_help_tables.sql $(1)/usr/share/mysql/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/share/mysql/mysql_system_tables.sql $(1)/usr/share/mysql/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/share/mysql/mysql_system_tables_data.sql $(1)/usr/share/mysql/
endef

define Package/mysql-server/conffiles
/etc/my.cnf
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,mysql-server))
$(eval $(call BuildPackage,libmysqlclient))
$(eval $(call BuildPackage,libmysqlclient-r))

