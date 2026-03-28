include $(TOPDIR)/rules.mk

PKG_NAME:=python-uvicorn
PKG_VERSION:=0.42.0
PKG_RELEASE:=1

PYPI_NAME:=uvicorn
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-uvicorn
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=The lightning-fast ASGI server.
  URL:=https://uvicorn.dev/
  DEPENDS:=+python3 +python3-click +python3-h11 +python3-typing-extensions
endef

define Package/python3-uvicorn/description
  Uvicorn is an ASGI web server implementation for Python.
endef

$(eval $(call Py3Package,python3-uvicorn))
$(eval $(call BuildPackage,python3-uvicorn))
$(eval $(call BuildPackage,python3-uvicorn-src))
