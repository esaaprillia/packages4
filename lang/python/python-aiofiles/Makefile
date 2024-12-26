include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiofiles
PKG_VERSION:=24.1.0
PKG_RELEASE:=1

PYPI_NAME:=aiofiles
PKG_HASH:=22a075c9e5a3810f0c2e48f3008c94d68c65d763b9b03857924c99e57355166c

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-aiofiles
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=File support for asyncio
  URL:=https://github.com/Tinche/aiofiles
  DEPENDS:=+python3-asyncio
endef

define Package/python3-aiofiles/description
  aiofiles is an Apache2 licensed library, written in Python,
  for handling local disk files in asyncio applications.
endef

$(eval $(call Py3Package,python3-aiofiles))
$(eval $(call BuildPackage,python3-aiofiles))
$(eval $(call BuildPackage,python3-aiofiles-src))
