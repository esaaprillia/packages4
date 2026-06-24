include $(TOPDIR)/rules.mk

PKG_NAME:=python-usb-devices
PKG_VERSION:=0.5.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=usb_devices
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-usb-devices
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Tools for mapping, describing, and resetting USB devices
  URL:=https://github.com/bluetooth-devices/usb-devices
  DEPENDS:=+python3
endef

define Package/python3-usb-devices/description
Tools for mapping, describing, and resetting USB devices
endef

$(eval $(call Py3Package,python3-usb-devices))
$(eval $(call BuildPackage,python3-usb-devices))
$(eval $(call BuildPackage,python3-usb-devices-src))
