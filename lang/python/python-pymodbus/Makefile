include $(TOPDIR)/rules.mk

PKG_NAME:=python-pymodbus
PKG_VERSION:=3.13.1
PKG_RELEASE:=1

PYPI_NAME:=pymodbus
PKG_HASH:=skip

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pymodbus
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A fully featured modbus protocol stack in python
  URL:=https://github.com/pymodbus-dev/pymodbus/
  DEPENDS:=+python3
endef

define Package/python3-pymodbus/description
Pymodbus is a full Modbus protocol implementation offering a client and server with synchronous/asynchronous API and simulators.
endef

$(eval $(call Py3Package,python3-pymodbus))
$(eval $(call BuildPackage,python3-pymodbus))
$(eval $(call BuildPackage,python3-pymodbus-src))
