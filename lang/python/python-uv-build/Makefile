#
# Copyright (C) 2006-2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/uclibc++.mk

PKG_NAME:=mariadb
PKG_VERSION:=5.3.12
PKG_RELEASE:=2

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://archive.mariadb.org/mariadb-5.3.12/kvm-tarbake-jaunty-x86/

PKG_MD5SUM:=2e90a44564888adc87dba52a5fdd0a2e
PKG_MAINTAINER:=Jo-Philipp Wich <jo@mein.io>
PKG_LICENSE:=GPL-2.0

PKG_BUILD_DEPENDS:=libncurses libreadline
PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0

PKG_FIXUP:=libtool

include $(INCLUDE_DIR)/package.mk

define Package/libmariadbclient/Default
  SECTION:=libs
  CATEGORY:=Libraries
  DEPENDS:=$(CXX_DEPENDS) +zlib
  TITLE:=MariaDB client library
  URL:=https://mariadb.org/
endef

define Package/mariadb-server
  SECTION:=utils
  CATEGORY:=Utilities
  DEPENDS:=+libmariadbclient +libpthread +libncursesw +libreadline
  TITLE:=MariaDB Server
  URL:=https://mariadb.org/
  SUBMENU:=database
endef

define Package/libmariadbclient
  $(call Package/libmariadbclient/Default)
endef

define Package/libmariadbclient-r
  $(call Package/libmariadbclient/Default)
  TITLE += threadsafe
  DEPENDS+= +libpthread
endef

ifneq ($(CONFIG_USE_UCLIBCXX),)
  TARGET_CXX=g++-uc
endif

TARGET_CFLAGS += $(FPIC)

CONFIGURE_ARGS += \
	--enable-shared \
	--enable-static \
	--enable-thread-safe-client \
	--disable-assembler \
	--with-pthread \
	--with-server \
	--without-mysqlmanager \
	--with-mysqld-user=root \
	--with-unix-socket-path=/tmp \
	--without-libwrap \
	--with-low-memory \
	--without-embedded-server \
	--without-query-cache \
	--without-ssl \
	--without-docs \
	--without-man \
	--with-readline \
	--without-debug \
	--with-named-thread-libs=-lpthread

CONFIGURE_VARS += \
	mysql_cv_compress=yes \
	mysql_cv_gethostname_style=glibc2 \
	mysql_cv_gcc_atomic_builtins=yes \
	mysql_cv_gcc_atomic_builtins_pthread_t=yes \
	ac_cv_c_stack_direction=-1

define Build/Compile
	+$(MAKE) $(PKG_JOBS) -C "$(PKG_BUILD_DIR)" \
		SUBDIRS="include" \
		DESTDIR="$(PKG_INSTALL_DIR)" \
		all
	$(MAKE) -C "$(PKG_BUILD_DIR)" \
		SUBDIRS="include" \
		DESTDIR="$(PKG_INSTALL_DIR)" \
		install
	g++ -I $(PKG_BUILD_DIR)/include \
		-o $(PKG_BUILD_DIR)/sql/gen_lex_hash \
		$(PKG_BUILD_DIR)/sql/gen_lex_hash.cc
	+$(MAKE) $(PKG_JOBS) -C "$(PKG_BUILD_DIR)/libmysql" \
		CC="g++" \
		CFLAGS="$(HOST_CFLAGS)" \
		CPPFLAGS="$(HOST_CFLAGS)" \
		LDFLAGS="$(HOST_LDFLAGS)" \
		conf_to_src
	+$(MAKE) $(PKG_JOBS) -C "$(PKG_BUILD_DIR)" \
		SUBDIRS="libmysql" \
		DESTDIR="$(PKG_INSTALL_DIR)" \
		all
	$(MAKE) -C "$(PKG_BUILD_DIR)" \
		SUBDIRS="libmysql" \
		DESTDIR="$(PKG_INSTALL_DIR)" \
		install
	+$(MAKE) $(PKG_JOBS) -C "$(PKG_BUILD_DIR)" \
		SUBDIRS="libmysql_r" \
		DESTDIR="$(PKG_INSTALL_DIR)" \
		all
	$(MAKE) -C "$(PKG_BUILD_DIR)" \
		SUBDIRS="libmysql_r" \
		DESTDIR="$(PKG_INSTALL_DIR)" \
		install
	$(MAKE) -C "$(PKG_BUILD_DIR)" \
		SUBDIRS="scripts" \
		DESTDIR="$(PKG_INSTALL_DIR)" \
		bin_SCRIPTS="mysql_config" \
		install
	+$(MAKE) $(PKG_JOBS) -C "$(PKG_BUILD_DIR)" \
		DESTDIR="$(PKG_INSTALL_DIR)" \
		all
	$(MAKE) -C "$(PKG_BUILD_DIR)" \
		DESTDIR="$(PKG_INSTALL_DIR)" \
		install
endef


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

define Package/libmariadbclient/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/mysql/libmysqlclient.so.* $(1)/usr/lib/
endef
define Package/libmariadbclient-r/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/mysql/libmysqlclient_r.so.* $(1)/usr/lib/
endef

define Package/mariadb-server/install
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

define Package/mariadb-server/conffiles
/etc/my.cnf
endef

$(eval $(call BuildPackage,mariadb-server))
$(eval $(call BuildPackage,libmariadbclient))
$(eval $(call BuildPackage,libmariadbclient-r))
