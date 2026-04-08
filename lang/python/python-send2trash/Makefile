include $(TOPDIR)/rules.mk

PKG_NAME:=python-send2trash
PKG_VERSION:=2.1.0
PKG_RELEASE:=1

PYPI_NAME:=send2trash
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-send2trash
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Send file to trash natively under Mac OS X, Windows and Linux
  URL:=https://github.com/arsenetar/send2trash
  DEPENDS:=+python3
endef

define Package/python3-send2trash/description
Send2Trash is a small package that sends files to the Trash (or Recycle Bin) natively and on all platforms. On OS X, it uses native FSMoveObjectToTrashSync Cocoa calls or can use pyobjc with NSFileManager.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-send2trash))
$(eval $(call BuildPackage,python3-send2trash))
$(eval $(call BuildPackage,python3-send2trash-src))
