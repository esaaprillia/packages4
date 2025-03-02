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

PKG_BUILD_DEPENDS:=gperf/host vulkan-headers
PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0
PKG_CPE_ID:=cpe:/a:qt:qt

include $(INCLUDE_DIR)/package.mk

define Package/qt5-qt3d
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qt3d
	URL:=http://qt-project.org
	DEPENDS:=+qt5-qtbase +qt5-qtdeclarative +assimp
endef

define Package/qt5-qt3d/description
Qt5 - C++ and QML APIs for easy inclusion of 3D graphics
endef

define Package/qt5-qtbase
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtbase
	URL:=http://qt-project.org
	DEPENDS:=+libgcc +libstdcpp +libatomic +libpcre2-16 +libdouble-conversion +libpng +libjpeg-turbo +libiconv-full +glib2 +md4c +libdbus +libfreetype +libopenssl +libsqlite3 +zlib @!LINUX_2_6_36
endef

define Package/qt5-qtbase/description
Qt5 - QtBase components
endef

define Package/qt5-qtcharts
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtcharts
	URL:=http://qt-project.org
	DEPENDS:=+qt5-qtbase +qt5-qtdeclarative
endef

define Package/qt5-qtcharts/description
Qt5 - Support for rendering and displaying SVG
endef

define Package/qt5-qtconnectivity
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtconnectivity
	URL:=http://qt-project.org
	DEPENDS:=+qt5-qtbase +qt5-qtdeclarative +bluez-libs
endef

define Package/qt5-qtconnectivity/description
Qt5 - Tools for the Bluetooth protocol stack (libraries)
endef

define Package/qt5-qtdatavis3d
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtdatavis3d
	URL:=http://qt-project.org
	DEPENDS:=+qt5-qtbase +qt5-qtdeclarative
endef

define Package/qt5-qtdatavis3d/description
Qt5 - Qt Data Visualization module
endef

define Package/qt5-qtdeclarative
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtdeclarative
	URL:=http://qt-project.org
	DEPENDS:=+qt5-qtbase
endef

define Package/qt5-qtdeclarative/description
Qt5 - QtDeclarative component
endef

define Package/qt5-qtgamepad
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtgamepad
	URL:=http://qt-project.org
	DEPENDS:=+qt5-qtbase +qt5-qtdeclarative
endef

define Package/qt5-qtgamepad/description
Qt5 - Adds support for getting events from gamepad devices
endef

define Package/qt5-qtgraphicaleffects
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtgraphicaleffects
	URL:=http://qt-project.org
	DEPENDS:=+qt5-qtbase +qt5-qtdeclarative
endef

define Package/qt5-qtgraphicaleffects/description
Qt5 - QtGraphicalEffects component
endef

define Package/qt5-qtimageformats
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtimageformats
	URL:=http://qt-project.org
	DEPENDS:=+qt5-qtbase +jasper +libmng +libtiff +libwebp
endef

define Package/qt5-qtimageformats/description
Qt5 - QtImageFormats component
endef

define Package/qt5-qtlocation
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtlocation
	URL:=http://qt-project.org
	DEPENDS:=+qt5-qtbase +qt5-qtdeclarative
endef

define Package/qt5-qtlocation/description
Qt5 - Location component
endef

define Package/qt5-qtlottie
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtlottie
	URL:=http://qt-project.org
	DEPENDS:=+qt5-qtbase +qt5-qtdeclarative
endef

define Package/qt5-qtlottie/description
Qt5 - A family of player software for a certain json-based file format for describing 2d vector graphics animations
endef

define Package/qt5-qtmultimedia
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtmultimedia
	URL:=http://qt-project.org
	DEPENDS:=+qt5-qtbase +qt5-qtdeclarative +alsa-lib +glib2 +gst-plugins-base +libgstreamer1
endef

define Package/qt5-qtmultimedia/description
Qt5 - Multimedia support
endef

define Package/qt5-qtnetworkauth
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtnetworkauth
	URL:=http://qt-project.org
	DEPENDS:=+qt5-qtbase
endef

define Package/qt5-qtnetworkauth/description
Qt5 - Network authentication module
endef

define Package/qt5-qtquick3d
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtquick3d
	URL:=http://qt-project.org
	DEPENDS:=+qt5-qtbase +qt5-qtdeclarative +assimp
endef

define Package/qt5-qtquick3d/description
Qt5 - Qt module and API for defining 3D content in Qt Quick
endef

define Package/qt5-qtquickcontrols
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtquickcontrols
	URL:=http://qt-project.org
	DEPENDS:=+qt5-qtbase +qt5-qtdeclarative
endef

define Package/qt5-qtquickcontrols/description
Qt5 - module with set of QtQuick controls
endef

define Package/qt5-qtquickcontrols2
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtquickcontrols2
	URL:=http://qt-project.org
	DEPENDS:=+qt5-qtbase +qt5-qtdeclarative +qt5-qtgraphicaleffects
endef

define Package/qt5-qtquickcontrols2/description
Qt5 - module with set of QtQuick controls for embedded
endef

define Package/qt5-qtquicktimeline
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtquicktimeline
	URL:=http://qt-project.org
	DEPENDS:=+qt5-qtbase +qt5-qtdeclarative
endef

define Package/qt5-qtquicktimeline/description
Qt5 - Qt module that enables keyframe-based animations and parameterization
endef

define Package/qt5-qtremoteobjects
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtremoteobjects
	URL:=http://qt-project.org
	DEPENDS:=+qt5-qtbase +qt5-qtdeclarative
endef

define Package/qt5-qtremoteobjects/description
Qt5 - Qt Remote Objects (QtRO) is an inter-process communication (IPC) module developed for Qt
endef

define Package/qt5-qtscript
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtscript
	URL:=http://qt-project.org
	DEPENDS:=+qt5-qtbase
endef

define Package/qt5-qtscript/description
Qt5 - QtScript component
endef

define Package/qt5-qtscxml
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtscxml
	URL:=http://qt-project.org
	DEPENDS:=+qt5-qtbase +qt5-qtdeclarative
endef

define Package/qt5-qtscxml/description
Qt5 - Static and runtime integration of SCXML models into Qt code
endef

define Package/qt5-qtsensors
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtsensors
	URL:=http://qt-project.org
	DEPENDS:=+qt5-qtbase +qt5-qtdeclarative
endef

define Package/qt5-qtsensors/description
Qt - The Qt Sensors API provides access to sensor hardware via QML and C++
endef

define Package/qt5-qtserialbus
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtserialbus
	URL:=http://qt-project.org
	DEPENDS:=+qt5-qtbase
endef

define Package/qt5-qtserialbus/description
Qt5 - Qt module for general purpose serial bus access
endef

define Package/qt5-qtserialport
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtserialport
	URL:=http://qt-project.org
	DEPENDS:=+qt5-qtbase
endef

define Package/qt5-qtserialport/description
Qt5 - QtSerialPort module
endef

define Package/qt5-qtspeech
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Qt5
	TITLE:=qtspeech
	URL:=http://qt-project.org
	DEPENDS:=+qt5-qtbase +qt5-qtmultimedia
endef

define Package/qt5-qtspeech/description
Qt5 - Qt module to make text to speech and speech recognition easy
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
		-glib \
		-no-gtk \
		-gui \
		-no-harfbuzz \
		-iconv \
		-no-icu \
		-no-kms \
		-system-libjpeg \
		-system-libmd4c \
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
	$(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR)
endef

define Build/InstallDev
	$(MAKE) -C $(PKG_BUILD_DIR) install
endef

define Package/qt5-qt3d/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/qt3d/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qt3d/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/qt5
	$(CP) $(PKG_BUILD_DIR)/qt3d/plugins $(1)/usr/lib/qt5/
	$(CP) $(PKG_BUILD_DIR)/qt3d/qml $(1)/usr/lib/qt5/
endef

define Package/qt5-qtbase/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/qtbase/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/*.so* $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtbase/metatypes $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/qt5
	$(CP) $(PKG_BUILD_DIR)/qtbase/plugins $(1)/usr/lib/qt5/
endef

define Package/qt5-qtcharts/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtcharts/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/qt5
	$(CP) $(PKG_BUILD_DIR)/qtcharts/qml $(1)/usr/lib/qt5/
endef

define Package/qt5-qtconnectivity/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/qtconnectivity/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtconnectivity/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/qt5
	$(CP) $(PKG_BUILD_DIR)/qtconnectivity/qml $(1)/usr/lib/qt5/
endef

define Package/qt5-qtdatavis3d/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtdatavis3d/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/qt5
	$(CP) $(PKG_BUILD_DIR)/qtdatavis3d/qml $(1)/usr/lib/qt5/
endef

define Package/qt5-qtdeclarative/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/qtdeclarative/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtdeclarative/lib/*.so* $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/qtdeclarative/metatypes/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/qt5
	$(CP) $(PKG_BUILD_DIR)/qtdeclarative/plugins $(1)/usr/lib/qt5/
	$(CP) $(PKG_BUILD_DIR)/qtdeclarative/qml $(1)/usr/lib/qt5/
endef

define Package/qt5-qtgamepad/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtgamepad/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/qt5
	$(CP) $(PKG_BUILD_DIR)/qtgamepad/plugins $(1)/usr/lib/qt5/
	$(CP) $(PKG_BUILD_DIR)/qtgamepad/qml $(1)/usr/lib/qt5/
endef

define Package/qt5-qtgraphicaleffects/install
	$(INSTALL_DIR) $(1)/usr/lib/qt5
	$(CP) $(PKG_BUILD_DIR)/qtgraphicaleffects/qml $(1)/usr/lib/qt5/
endef

define Package/qt5-qtimageformats/install
	$(INSTALL_DIR) $(1)/usr/lib/qt5
	$(CP) $(PKG_BUILD_DIR)/qtimageformats/plugins $(1)/usr/lib/qt5/
endef

define Package/qt5-qtlocation/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtlocation/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/qt5
	$(CP) $(PKG_BUILD_DIR)/qtlocation/plugins $(1)/usr/lib/qt5/
	$(CP) $(PKG_BUILD_DIR)/qtlocation/qml $(1)/usr/lib/qt5/
endef

define Package/qt5-qtlottie/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtlottie/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/qt5
	$(CP) $(PKG_BUILD_DIR)/qtlottie/qml $(1)/usr/lib/qt5/
endef

define Package/qt5-qtmultimedia/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtmultimedia/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/qt5
	$(CP) $(PKG_BUILD_DIR)/qtmultimedia/plugins $(1)/usr/lib/qt5/
	$(CP) $(PKG_BUILD_DIR)/qtmultimedia/qml $(1)/usr/lib/qt5/
endef

define Package/qt5-qtnetworkauth/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtnetworkauth/lib/*.so* $(1)/usr/lib/
endef

define Package/qt5-qtquick3d/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/qtquick3d/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtquick3d/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/qt5
	$(CP) $(PKG_BUILD_DIR)/qtquick3d/plugins $(1)/usr/lib/qt5/
	$(CP) $(PKG_BUILD_DIR)/qtquick3d/qml $(1)/usr/lib/qt5/
endef

define Package/qt5-qtquickcontrols/install
	$(INSTALL_DIR) $(1)/usr/lib/qt5
	$(CP) $(PKG_BUILD_DIR)/qtquickcontrols/qml $(1)/usr/lib/qt5/
endef

define Package/qt5-qtquickcontrols2/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtquickcontrols2/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/qt5
	$(CP) $(PKG_BUILD_DIR)/qtquickcontrols2/qml $(1)/usr/lib/qt5/
endef

define Package/qt5-qtquicktimeline/install
	$(INSTALL_DIR) $(1)/usr/lib/qt5
	$(CP) $(PKG_BUILD_DIR)/qtquicktimeline/qml $(1)/usr/lib/qt5/
endef

define Package/qt5-qtremoteobjects/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/qtremoteobjects/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtremoteobjects/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/qt5
	$(CP) $(PKG_BUILD_DIR)/qtremoteobjects/qml $(1)/usr/lib/qt5/
endef

define Package/qt5-qtscript/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtscript/lib/*.so* $(1)/usr/lib/
endef

define Package/qt5-qtscxml/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/qtscxml/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtscxml/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/qt5
	$(CP) $(PKG_BUILD_DIR)/qtscxml/qml $(1)/usr/lib/qt5/
endef

define Package/qt5-qtsensors/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtsensors/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/qt5
	$(CP) $(PKG_BUILD_DIR)/qtsensors/plugins $(1)/usr/lib/qt5/
	$(CP) $(PKG_BUILD_DIR)/qtsensors/qml $(1)/usr/lib/qt5/
endef

define Package/qt5-qtserialbus/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/qtserialbus/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtserialbus/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/qt5
	$(CP) $(PKG_BUILD_DIR)/qtserialbus/plugins $(1)/usr/lib/qt5/
endef

define Package/qt5-qtserialport/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtserialport/lib/*.so* $(1)/usr/lib/
endef

define Package/qt5-qtspeech/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtspeech/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/qt5
	$(CP) $(PKG_BUILD_DIR)/qtspeech/plugins $(1)/usr/lib/qt5/
endef

define Package/qt5-xml/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt5Xml.so* $(1)/usr/lib/
endef

define Package/qt5-xml/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/qtbase/lib/libQt5Xml.so* $(1)/usr/lib/
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
