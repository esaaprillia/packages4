include $(TOPDIR)/rules.mk

PKG_NAME:=python-pymetno
PKG_VERSION:=0.13.0
PKG_RELEASE:=1

PYPI_NAME:=pymetno
PKG_HASH:=b36f8dbefc41b939a616c88fa13e0a5b1dda9315b3df96d6798a1cb0fee028fb

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pymetno
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A library to communicate with the met.no api
  URL:=https://github.com/Danielhiversen/pyMetno/
  DEPENDS:=+python3 +python3-asyncio +python3-aiohttp +python3-async-timeout +python3-logging +python3-pytz +python3-xmltodict
endef

define Package/python3-pymetno/description
Python library to talk to the met.no api
endef

PYTHON3_PKG_WHEEL_NAME:=PyMetno
PYTHON3_PKG_WHEEL_VERSION:=0.13.0

$(eval $(call Py3Package,python3-pymetno))
$(eval $(call BuildPackage,python3-pymetno))
$(eval $(call BuildPackage,python3-pymetno-src))
