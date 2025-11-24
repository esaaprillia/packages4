include $(TOPDIR)/rules.mk

PKG_NAME:=python-psycopg
PKG_VERSION:=3.2.13
PKG_RELEASE:=1

PYPI_NAME:=psycopg
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-3.0
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-psycopg
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=PostgreSQL database adapter for Python
  URL:=https://psycopg.org/
  DEPENDS:=+python3 +libpq
endef

define Package/python3-psycopg/description
Psycopg 3 is a modern implementation of a PostgreSQL adapter for Python.
endef

$(eval $(call Py3Package,python3-psycopg))
$(eval $(call BuildPackage,python3-psycopg))
$(eval $(call BuildPackage,python3-psycopg-src))
