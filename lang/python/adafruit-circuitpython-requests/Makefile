include $(TOPDIR)/rules.mk

PKG_NAME:=adafruit-circuitpython-requests
PKG_VERSION:=4.1.13
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=adafruit_circuitpython_requests
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-adafruit-circuitpython-requests
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A requests-like library for web interfacing
  URL:=https://github.com/adafruit/Adafruit_CircuitPython_Requests
  DEPENDS:=+python3 +python3-requests +python3-adafruit-blinka +python3-adafruit-circuitpython-connectionmanager
endef

define Package/python3-adafruit-circuitpython-requests/description
A requests-like library for HTTP commands.
endef

$(eval $(call Py3Package,python3-adafruit-circuitpython-requests))
$(eval $(call BuildPackage,python3-adafruit-circuitpython-requests))
$(eval $(call BuildPackage,python3-adafruit-circuitpython-requests-src))
