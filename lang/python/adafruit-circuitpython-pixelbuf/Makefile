include $(TOPDIR)/rules.mk

PKG_NAME:=adafruit-circuitpython-pixelbuf
PKG_VERSION:=2.0.9
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=adafruit_circuitpython_pixelbuf
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-adafruit-circuitpython-pixelbuf
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A pure Python implementation of adafruit_pixelbuf for smaller boards.
  URL:=https://github.com/adafruit/Adafruit_CircuitPython_Pixelbuf
  DEPENDS:=+python3 +python3-adafruit-blinka
endef

define Package/python3-adafruit-circuitpython-pixelbuf/description
Pure python implementation of adafruit_pixelbuf for smaller boards
endef

$(eval $(call Py3Package,python3-adafruit-circuitpython-pixelbuf))
$(eval $(call BuildPackage,python3-adafruit-circuitpython-pixelbuf))
$(eval $(call BuildPackage,python3-adafruit-circuitpython-pixelbuf-src))
