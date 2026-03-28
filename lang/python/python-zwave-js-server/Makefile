include $(TOPDIR)/rules.mk

PKG_NAME:=python-zwave-js-server
PKG_VERSION:=0.68.0
PKG_RELEASE:=1

PYPI_NAME:=zwave_js_server_python
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-zwave-js-server
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python wrapper for zwave-js-server
  URL:=https://github.com/home-assistant-libs/zwave-js-server-python
  DEPENDS:=+python3 +python3-aiohttp +python3-pydantic
endef

define Package/python3-zwave-js-server/description
Python library for communicating with zwave-js-server. Goal for this library is to replicate the structure and the events of Z-Wave JS 1:1. So it has a Driver, Controller and Node classes.
endef

$(eval $(call Py3Package,python3-zwave-js-server))
$(eval $(call BuildPackage,python3-zwave-js-server))
$(eval $(call BuildPackage,python3-zwave-js-server-src))
