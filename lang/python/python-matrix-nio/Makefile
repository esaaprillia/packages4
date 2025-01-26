include $(TOPDIR)/rules.mk

PKG_NAME:=python-matrix-nio
PKG_VERSION:=0.25.2
PKG_RELEASE:=1

PYPI_NAME:=matrix_nio
PKG_HASH:=8ef8180c374e12368e5c83a692abfb3bab8d71efcd17c5560b5c40c9b6f2f600

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache 2.0
PKG_LICENSE_FILES:=LICENSE.md

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-matrix-nio
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A Python Matrix client library, designed according to sans I/O principles.
  URL:=https://matrix-nio.readthedocs.io
  DEPENDS:=+python3 +python3-aiohttp +python3-aiofiles +python3-h11+python3-h2 +python3-jsonschema +python3-unpaddedbase64 +python3-cryptodome +python3-aiohttp-socks
endef

define Package/python3-matrix-nio/description
  nio is a multilayered Matrix client library. The underlying base layer doesn't do any network IO on its own, but on top of that is a full-fledged batteries-included asyncio layer using aiohttp. File IO is only done if you enable end-to-end encryption (E2EE).
endef

$(eval $(call Py3Package,python3-matrix-nio))
$(eval $(call BuildPackage,python3-matrix-nio))
$(eval $(call BuildPackage,python3-matrix-nio-src))
