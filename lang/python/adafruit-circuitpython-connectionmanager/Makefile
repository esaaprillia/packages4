include $(TOPDIR)/rules.mk

PKG_NAME:=adafruit-circuitpython-connectionmanager
PKG_VERSION:=3.1.5
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=adafruit_circuitpython_connectionmanager
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-adafruit-circuitpython-connectionmanager
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A urllib3.poolmanager/urllib3.connectionpool-like library for managing sockets and connections
  URL:=https://github.com/adafruit/Adafruit_CircuitPython_ConnectionManager
  DEPENDS:=+python3 +python3-adafruit-blinka
endef

define Package/python3-adafruit-circuitpython-connectionmanager/description
A urllib3.poolmanager/urllib3.connectionpool-like library for managing sockets and connections
endef

$(eval $(call Py3Package,python3-adafruit-circuitpython-connectionmanager))
$(eval $(call BuildPackage,python3-adafruit-circuitpython-connectionmanager))
$(eval $(call BuildPackage,python3-adafruit-circuitpython-connectionmanager-src))
