include $(TOPDIR)/rules.mk

PKG_NAME:=adafruit-pureIo
PKG_VERSION:=1.1.11
PKG_RELEASE:=1

PYPI_NAME:=Adafruit-PureIO
PYPI_SOURCE_NAME:=Adafruit_PureIO
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-adafruit-pureIo
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Pure python (i.e. no native extensions) access to Linux IO including I2C and SPI. Drop in replacement for smbus and spidev modules.
  URL:=https://github.com/adafruit/Adafruit_Python_PureIO
  DEPENDS:=+python3-light
endef

define Package/python3-adafruit-pureIo/description
Pure python (i.e. no native extensions) access to Linux IO including I2C and SPI. Drop in replacement for smbus and spidev modules.
endef

$(eval $(call Py3Package,python3-adafruit-pureIo))
$(eval $(call BuildPackage,python3-adafruit-pureIo))
$(eval $(call BuildPackage,python3-adafruit-pureIo-src))
