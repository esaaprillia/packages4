include $(TOPDIR)/rules.mk

PKG_NAME:=python-starlette
PKG_VERSION:=1.2.1
PKG_RELEASE:=1

PYPI_NAME:=starlette
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-starlette
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=The little ASGI library that shines.
  URL:=https://github.com/Kludex/starlette
  DEPENDS:=+python3 +python3-anyio +python3-typing-extensions
endef

define Package/python3-starlette/description
  Starlette is a lightweight ASGI framework/toolkit, which is ideal for building async web services in Python.
endef

$(eval $(call Py3Package,python3-starlette))
$(eval $(call BuildPackage,python3-starlette))
$(eval $(call BuildPackage,python3-starlette-src))
