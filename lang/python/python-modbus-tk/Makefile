include $(TOPDIR)/rules.mk

PKG_NAME:=python-modbus-tk
PKG_VERSION:=1.1.5
PKG_RELEASE:=1

PYPI_NAME:=modbus_tk
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=license.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-modbus-tk
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Implementation of modbus protocol in python
  URL:=https://github.com/ljean/modbus-tk/
  DEPENDS:=+python3 +python3-pyserial
endef

define Package/python3-modbus-tk/description
Modbus Test Kit provides implementation of slave and master for Modbus TCP and RTU IT helps to create Modbus app easily with Python
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-modbus-tk))
$(eval $(call BuildPackage,python3-modbus-tk))
$(eval $(call BuildPackage,python3-modbus-tk-src))
