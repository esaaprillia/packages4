include $(TOPDIR)/rules.mk

PKG_NAME:=qtbase
PKG_BASE:=5.15
PKG_BUGFIX:=17
PKG_VERSION:=$(PKG_BASE).$(PKG_BUGFIX)
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-everywhere-opensource-src-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://download.qt.io/archive/qt/$(PKG_BASE)/$(PKG_VERSION)/submodules
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=FDL GPL2 GPL3 GPL3-EXCEPT LGPL3 LGPLv3 QT-LICENSE-AGREEMENT
PKG_LICENSE_FILES:=LICENSE.FDL LICENSE.GPL2 LICENSE.GPL3 LICENSE.GPL3-EXCEPT LICENSE.LGPL3 LICENSE.LGPLv3 LICENSE.QT-LICENSE-AGREEMENT

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-everywhere-src-$(PKG_VERSION)

PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0
PKG_CPE_ID:=cpe:/a:qt:qt

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/nls.mk

define Package/qtbase
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtbase
	URL:=http://qt-project.org
	DEPENDS:=+libgcc +libstdcpp +libatomic +libpcre2-16 +libpng +libjpeg-turbo +libiconv-full +glib2 +libdbus +libfreetype +libopenssl +libsqlite3 +icu +fontconfig +libinput +libzstd +harfbuzz +zlib @!LINUX_2_6_36
endef

define Package/qtbase/description
Qt5 - QtBase components
endef

CONFIGURE_ARGS = \
	-sysroot $(STAGING_DIR) \
	-hostprefix $(STAGING_DIR_HOSTPKG) \
	-extprefix $(STAGING_DIR)/usr \
	-prefix /usr \
	-bindir /usr/bin \
	-headerdir /usr/include \
	-libdir /usr/lib \
	-archdatadir /usr/lib \
	-plugindir /usr/lib/plugins \
	-libexecdir /usr/lib/libexec \
	-importdir /usr/lib/imports \
	-qmldir /usr/lib/qml \
	-datadir /usr/share \
	-docdir /usr/share/doc \
	-translationdir /usr/share/translations \
	-sysconfdir /etc/xdg \
	-examplesdir /usr/share/examples \
	-testsdir /usr/share/tests \
	-hostbindir $(STAGING_DIR_HOSTPKG)/bin \
	-hostlibdir $(STAGING_DIR_HOSTPKG)/lib \
	-hostdatadir $(STAGING_DIR_HOSTPKG)/share \
	-device linux-generic-g++ \
	-device-option CROSS_COMPILE="$(TARGET_CROSS)" \
	-device-option COMPILER_FLAGS="$(TARGET_CFLAGS) $(EXTRA_CFLAGS) $(TARGET_CPPFLAGS) $(EXTRA_CPPFLAGS)" \
	-device-option LINKER_FLAGS="$(TARGET_LDFLAGS) $(EXTRA_LDFLAGS)" \
	-verbose \
	-opensource \
	-confirm-license \
	-release \
	-strip \
	-shared \
	-no-rpath \
	-no-pch \
	-ltcg \
	-no-use-gold-linker \
	-gui \
	-widgets \
	-dbus-linked \
	-glib \
	-iconv \
	-icu \
	-system-pcre \
	-system-zlib \
	-openssl-linked \
	-system-freetype \
	-system-harfbuzz \
	-system-libpng \
	-system-libjpeg \
	-sql-sqlite \
	-system-sqlite

define Build/Compile
	$(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR)/$(MAKE_PATH)
endef

define Build/InstallDev
	$(MAKE) -C $(PKG_BUILD_DIR)/$(MAKE_PATH) install
endef

define Package/qtbase/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/qtbase/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/*.so* $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtbase/plugins $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtbase/metatypes $(1)/usr/lib/
endef

$(eval $(call BuildPackage,qtbase))
