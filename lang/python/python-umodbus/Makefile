include $(TOPDIR)/rules.mk

PKG_NAME:=python-umodbus
PKG_VERSION:=1.0.4
PKG_RELEASE:=1

PYPI_NAME:=uModbus
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MPL-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-umodbus
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Implementation of the Modbus protocol in pure Python.
  URL:=https://github.com/tiagocoutinho/async_modbus
  DEPENDS:=+python3-light +python3-pyserial
endef

define Package/python3-umodbus/description
uModbus or (μModbus) is a pure Python implementation of the Modbus protocol as described in the MODBUS Application Protocol Specification V1.1b3.
endef

PYTHON3_PKG_WHEEL_NAME:=umodbus
PYTHON3_PKG_WHEEL_VERSION:=1.0.4

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-umodbus))
$(eval $(call BuildPackage,python3-umodbus))
$(eval $(call BuildPackage,python3-umodbus-src))
