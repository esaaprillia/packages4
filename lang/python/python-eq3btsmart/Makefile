include $(TOPDIR)/rules.mk

PKG_NAME:=python-eq3btsmart
PKG_VERSION:=2.1.0
PKG_RELEASE:=1

PYPI_NAME:=eq3btsmart
PKG_HASH:=c43ae37e9b64c4695e1e2727b9354b85a456f2c2578298af9712ce2d9da6874b

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-eq3btsmart
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python library to interact with eQ-3 Bluetooth Smart thermostats
  URL:=https://github.com/eulemitkeule/eq3btsmart
  DEPENDS:=+python3 +python3-bleak +python3-construct-typing
endef

define Package/python3-eq3btsmart/description
  A Python library for interaction with eQ-3 Bluetooth Smart Thermostat devices using bleak and asyncio.
endef

$(eval $(call Py3Package,python3-eq3btsmart))
$(eval $(call BuildPackage,python3-eq3btsmart))
$(eval $(call BuildPackage,python3-eq3btsmart-src))
