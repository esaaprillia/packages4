include $(TOPDIR)/rules.mk

PKG_NAME:=python-peewee
PKG_VERSION:=4.5.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt

PYPI_NAME:=peewee
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-peewee
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=a small, expressive orm -- supports postgresql, mysql, sqlite, now with asyncio
  URL:=https://github.com/coleifer/peewee
  DEPENDS:= \
	+python3 \
	+libsqlite3
endef

define Package/python3-peewee/description
Peewee is a simple and small ORM. It has few (but expressive) concepts, making it easy to learn and intuitive to use.
endef

$(eval $(call Py3Package,python3-peewee))
$(eval $(call BuildPackage,python3-peewee))
$(eval $(call BuildPackage,python3-peewee-src))
