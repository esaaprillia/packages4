include $(TOPDIR)/rules.mk

PKG_NAME:=qt
PKG_BASE:=5.15
PKG_BUGFIX:=16
PKG_VERSION:=$(PKG_BASE).$(PKG_BUGFIX)
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-everywhere-opensource-src-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://download.qt.io/archive/qt/$(PKG_BASE)/$(PKG_VERSION)/single
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=FDL GPL2 GPL3 GPL3-EXCEPT LGPL3 LGPLv3 QT-LICENSE-AGREEMENT
PKG_LICENSE_FILES:=LICENSE.FDL LICENSE.GPL2 LICENSE.GPL3 LICENSE.GPL3-EXCEPT LICENSE.LGPL3 LICENSE.LGPLv3 LICENSE.QT-LICENSE-AGREEMENT

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-everywhere-src-$(PKG_VERSION)

PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0
PKG_CPE_ID:=cpe:/a:qt:qt

include $(INCLUDE_DIR)/package.mk

define Package/qt5-core
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtbase
	URL:=http://qt-project.org
	DEPENDS:=+libgcc +libstdcpp +libatomic +libpcre2-16 +libdouble-conversion +libpng +libjpeg-turbo +libiconv-full +zlib @!LINUX_2_6_36
endef

define Package/qt5-core/description

endef

define Package/qt5-concurrent
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtbase
	URL:=http://qt-project.org
	DEPENDS:=+qt5-core
endef

define Package/qt5-concurrent/description

endef

define Package/qt5-dbus
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtbase
	URL:=http://qt-project.org
	DEPENDS:=+qt5-core +libdbus
endef

define Package/qt5-dbus/description

endef

define Package/qt5-gui
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtbase
	URL:=http://qt-project.org
	DEPENDS:=+qt5-dbus +libfreetype
endef

define Package/qt5-gui/description

endef

define Package/qt5-network
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtbase
	URL:=http://qt-project.org
	DEPENDS:=+qt5-core +libopenssl +zlib
endef

define Package/qt5-network/description

endef

define Package/qt5-printsupport
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtbase
	URL:=http://qt-project.org
	DEPENDS:=+qt5-widgets
endef

define Package/qt5-printsupport/description

endef

define Package/qt5-sql
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtbase
	URL:=http://qt-project.org
	DEPENDS:=+qt5-core +libsqlite3
endef

define Package/qt5-sql/description

endef

define Package/qt5-test
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtbase
	URL:=http://qt-project.org
	DEPENDS:=+qt5-core
endef

define Package/qt5-test/description

endef

define Package/qt5-widgets
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtbase
	URL:=http://qt-project.org
	DEPENDS:=+qt5-gui
endef

define Package/qt5-widgets/description

endef

define Package/qt5-xml
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtbase
	URL:=http://qt-project.org
	DEPENDS:=+qt5-core
endef

define Package/qt5-xml/description

endef

EXTRA_CFLAGS += $(FPIC) -ffunction-sections -fdata-sections -flto
EXTRA_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS = \
		-sysroot $(STAGING_DIR) \
		-hostprefix $(STAGING_DIR_HOSTPKG) \
		-extprefix $(STAGING_DIR)/usr \
		-prefix /usr \
		-bindir /usr/bin \
		-headerdir /usr/include/qt5 \
		-libdir /usr/lib \
		-archdatadir /usr/lib/qt5 \
		-plugindir /usr/lib/qt5/plugins \
		-libexecdir /usr/lib/qt5/libexec \
		-importdir /usr/lib/qt5/imports \
		-qmldir /usr/lib/qt5/qml \
		-datadir /usr/share/qt5 \
		-docdir /usr/share/doc/qt5 \
		-translationdir /usr/share/qt5/translations \
		-sysconfdir /etc/xdg \
		-examplesdir /usr/share/qt5/examples \
		-testsdir /usr/share/qt5/tests \
		-device linux-generic-g++ \
		-device-option CROSS_COMPILE="$(TARGET_CROSS)" \
		-device-option COMPILER_FLAGS="$(TARGET_CFLAGS) $(EXTRA_CFLAGS) $(TARGET_CPPFLAGS) $(EXTRA_CPPFLAGS)" \
		-device-option LINKER_FLAGS="$(TARGET_LDFLAGS) $(EXTRA_LDFLAGS)" \
		-confirm-license \
		-opensource \
		-release \
		-shared \
		-strip \
		-no-rpath \
		-no-use-gold-linker \
		-ltcg \
		-mimetype-database \
		-openssl-linked \
		-system-doubleconversion \
		-system-pcre \
		-system-zlib \
		$(if $(findstring i386,$(ARCH)),-no-sse2 -no-sse4.1) \
		-no-angle \
		-no-cups \
		-dbus-linked \
		-no-directfb \
		-no-dtls\
		-no-egl \
		-no-eglfs \
		-system-freetype \
		-no-gbm \
		-no-glib \
		-no-gtk \
		-gui \
		-no-harfbuzz \
		-iconv \
		-no-icu \
		-no-kms \
		-system-libjpeg \
		-no-libmd4c \
		-system-libpng \
		-no-libudev \
		-no-mtdev \
		-no-opengl \
		-no-opengles3 \
		-no-openvg \
		-no-pch \
		-no-slog2 \
		-sql-sqlite \
		-system-sqlite \
		-no-trace \
		-no-tslib \
		-no-vulkan \
		-widgets \
		-no-xcb \
		-no-xkbcommon \
		-no-zstd \
		-no-compile-examples \
		-feature-concurrent \
		-no-feature-gssapi \
		-feature-testlib \
		-make libs \
		-nomake examples \
		-nomake tests \
		-nomake tools \
		-v

define Build/Compile
	$(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR)/$(MAKE_PATH)
endef

define Build/InstallDev
	$(MAKE) -C $(PKG_BUILD_DIR)/$(MAKE_PATH) install
endef

define Package/qt5-core/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt5Core.so* $(1)/usr/lib/
endef

define Package/qt5-concurrent/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt5Concurrent.so* $(1)/usr/lib/
endef

define Package/qt5-dbus/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt5DBus.so* $(1)/usr/lib/
endef

define Package/qt5-gui/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt5Gui.so* $(1)/usr/lib/
endef

define Package/qt5-network/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt5Network.so* $(1)/usr/lib/
endef

define Package/qt5-printsupport/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt5PrintSupport.so* $(1)/usr/lib/
endef

define Package/qt5-sql/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(INSTALL_DIR) $(1)/usr/lib/qt5/plugins/sqldrivers
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt5Sql.so* $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtbase/plugins/sqldrivers/*.so $(1)/usr/lib/qt5/plugins/sqldrivers/
endef

define Package/qt5-test/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt5Test.so* $(1)/usr/lib/
endef

define Package/qt5-widgets/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt5Widgets.so* $(1)/usr/lib/
endef

define Package/qt5-xml/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt5Xml.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,qt5-core))
$(eval $(call BuildPackage,qt5-concurrent))
$(eval $(call BuildPackage,qt5-dbus))
$(eval $(call BuildPackage,qt5-gui))
$(eval $(call BuildPackage,qt5-network))
$(eval $(call BuildPackage,qt5-printsupport))
$(eval $(call BuildPackage,qt5-sql))
$(eval $(call BuildPackage,qt5-test))
$(eval $(call BuildPackage,qt5-widgets))
$(eval $(call BuildPackage,qt5-xml))
