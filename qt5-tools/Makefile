include $(TOPDIR)/rules.mk

PKG_NAME:=qt5-tools
PKG_BASE:=5.15
PKG_BUGFIX:=16
PKG_VERSION:=$(PKG_BASE).$(PKG_BUGFIX)
PKG_RELEASE:=1

PKG_SOURCE:=qttools-everywhere-opensource-src-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://download.qt.io/archive/qt/$(PKG_BASE)/$(PKG_VERSION)/submodules
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=FDL GPL2 GPL3 GPL3-EXCEPT LGPL3 LGPLv3 QT-LICENSE-AGREEMENT
PKG_LICENSE_FILES:=LICENSE.FDL LICENSE.GPL2 LICENSE.GPL3 LICENSE.GPL3-EXCEPT LICENSE.LGPL3 LICENSE.LGPLv3 LICENSE.QT-LICENSE-AGREEMENT

PKG_BUILD_DIR:=$(BUILD_DIR)/qttools-everywhere-src-$(PKG_VERSION)

PKG_BUILD_PARALLEL:=1
PKG_BUILD_DEPENDS:=qtbase

include $(INCLUDE_DIR)/package.mk

define Package/qt5-tools
  SECTION:=libs
  CATEGORY:=Libraries
  SUBMENU:=Qt5
  TITLE:=qttools
  URL:=http://qt-project.org
  BUILDONLY:=1
endef

define Build/Configure
	cd $(PKG_BUILD_DIR) && qmake -o Makefile qttools.pro
endef

define Build/Compile
	$(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR)/$(MAKE_PATH)
endef

define Build/InstallDev
	$(MAKE) -C $(PKG_BUILD_DIR)/$(MAKE_PATH) install
endef

$(eval $(call BuildPackage,qt5-tools))
