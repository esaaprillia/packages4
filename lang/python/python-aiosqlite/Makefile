include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiosqlite
PKG_VERSION:=0.20.0
PKG_RELEASE:=1

PYPI_NAME:=aiosqlite
PKG_HASH:=6d35c8c256637f4672f843c31021464090805bf925385ac39473fb16eaaca3d7

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-aiosqlite
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=asyncio bridge to the standard sqlite3 module
  URL:=https://github.com/omnilib/aiosqlite
  DEPENDS:= \
	+python3-asyncio \
	+python3-logging \
	+python3-sqlite3 \
	+python3-typing-extensions
endef

define Package/python3-aiosqlite/description
  aiosqlite provides a friendly, async interface to sqlite databases.
endef

$(eval $(call Py3Package,python3-aiosqlite))
$(eval $(call BuildPackage,python3-aiosqlite))
$(eval $(call BuildPackage,python3-aiosqlite-src))
