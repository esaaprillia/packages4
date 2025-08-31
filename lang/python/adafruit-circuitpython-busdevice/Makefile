include $(TOPDIR)/rules.mk

PKG_NAME:=adafruit-circuitpython-busdevice
PKG_VERSION:=5.2.13
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=adafruit_circuitpython_busdevice
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-adafruit-circuitpython-busdevice
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=CircuitPython bus device classes to manage bus sharing.
  URL:=https://github.com/adafruit/Adafruit_CircuitPython_BusDevice
  DEPENDS:=+python3
  EXTRA_DEPENDS:=python3-adafruit-blinka, python3-adafruit-circuitpython-typing
endef

define Package/python3-adafruit-circuitpython-busdevice/description
The I2CDevice and SPIDevice helper classes make managing transaction state on a bus easy. For example, they manage locking the bus to prevent other concurrent access. For SPI devices, it manages the chip select and protocol changes such as mode. For I2C, it manages the device address.
endef

$(eval $(call Py3Package,python3-adafruit-circuitpython-busdevice))
$(eval $(call BuildPackage,python3-adafruit-circuitpython-busdevice))
$(eval $(call BuildPackage,python3-adafruit-circuitpython-busdevice-src))
