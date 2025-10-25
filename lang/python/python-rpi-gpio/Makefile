include $(TOPDIR)/rules.mk

PKG_NAME:=python-rpi-gpio
PKG_VERSION:=0.7.1
PKG_RELEASE:=1

PYPI_NAME:=RPi.GPIO
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:= LICENCE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-rpi-gpio
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A module to control Raspberry Pi GPIO channels
  URL:=https://sourceforge.net/projects/raspberry-gpio-python/
  DEPENDS:=+python3
endef

define Package/python3-rpi-gpio/description
This package provides a Python module to control the GPIO on a Raspberry Pi.
endef

$(eval $(call Py3Package,python3-rpi-gpio))
$(eval $(call BuildPackage,python3-rpi-gpio))
$(eval $(call BuildPackage,python3-rpi-gpio-src))
