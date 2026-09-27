include $(TOPDIR)/rules.mk

PKG_NAME:=python-asyncpg
PKG_VERSION:=0.31.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=asyncpg
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-packaging/host python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-asyncpg
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=An asyncio PostgreSQL driver
  URL:=https://github.com/MagicStack/asyncpg
  DEPENDS:= \
	+python3 \
	+python3-async-timeout
endef

define Package/python3-asyncpg/description
asyncpg is a database interface library designed specifically for PostgreSQL and Python/asyncio.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-asyncpg))
$(eval $(call BuildPackage,python3-asyncpg))
$(eval $(call BuildPackage,python3-asyncpg-src))
