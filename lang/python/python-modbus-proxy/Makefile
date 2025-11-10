include $(TOPDIR)/rules.mk

PKG_NAME:=python-modbus-proxy
PKG_VERSION:=0.8.0
PKG_RELEASE:=1

PYPI_NAME:=modbus_proxy
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-modbus-proxy
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=ModBus TCP proxy
  URL:=https://github.com/tiagocoutinho/modbus-proxy
  DEPENDS:=+python3-light +python3-yaml
endef

define Package/python3-modbus-proxy/description
Many modbus devices support only one or very few clients.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-modbus-proxy))
$(eval $(call BuildPackage,python3-modbus-proxy))
$(eval $(call BuildPackage,python3-modbus-proxy-src))
