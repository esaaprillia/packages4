include $(TOPDIR)/rules.mk

PKG_NAME:=python-async-modbus
PKG_VERSION:=0.2.3
PKG_RELEASE:=1

PYPI_NAME:=async_modbus
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-async-modbus
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Async ModBus python library
  URL:=https://github.com/tiagocoutinho/async_modbus
  DEPENDS:=+python3-light +python3-connio +python3-umodbus +python3-numpy
endef

define Package/python3-async-modbus/description
Asynchronous (as in python async/await) modbus python 3 client library. A thin layer on on top of the venerable umodbus library providing an object oriented client API.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-async-modbus))
$(eval $(call BuildPackage,python3-async-modbus))
$(eval $(call BuildPackage,python3-async-modbus-src))
