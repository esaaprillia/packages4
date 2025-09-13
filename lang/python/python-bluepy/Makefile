include $(TOPDIR)/rules.mk

PKG_NAME:=python-bluepy
PKG_VERSION:=1.3.0
PKG_RELEASE:=1

PYPI_NAME:=bluepy
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL2
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-bluepy
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python module for interfacing with BLE devices through Bluez
  URL:=https://github.com/IanHarvey/bluepy
  DEPENDS:=+python3 +bluez-libs +glib2
endef

define Package/python3-bluepy/description
  This is a project to provide an API to allow access to Bluetooth Low Energy devices from Python. At present it runs on Linux only; I've mostly developed it using a Raspberry Pi, but it will also run on x86 Debian Linux.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-bluepy))
$(eval $(call BuildPackage,python3-bluepy))
$(eval $(call BuildPackage,python3-bluepy-src))
