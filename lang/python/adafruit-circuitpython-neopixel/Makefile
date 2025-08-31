include $(TOPDIR)/rules.mk

PKG_NAME:=adafruit-circuitpython-neopixel
PKG_VERSION:=6.3.17
PKG_RELEASE:=1

PYPI_NAME:=adafruit_circuitpython_neopixel
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-adafruit-circuitpython-neopixel
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=CircuitPython library for NeoPixel LEDs.
  URL:=https://github.com/adafruit/Adafruit_CircuitPython_NeoPixel
  DEPENDS:=+python3-light +python3-adafruit-blinka +python3-adafruit-circuitpython-pixelbuf
endef

define Package/python3-adafruit-circuitpython-neopixel/description
Higher level NeoPixel driver that presents the strip as a sequence. This is a supercharged version of the original MicroPython driver. Its now more like a normal Python sequence and features slice support, repr and len support.
endef

$(eval $(call Py3Package,python3-adafruit-circuitpython-neopixel))
$(eval $(call BuildPackage,python3-adafruit-circuitpython-neopixel))
$(eval $(call BuildPackage,python3-adafruit-circuitpython-neopixel-src))
