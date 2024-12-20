include $(TOPDIR)/rules.mk

PKG_NAME:=python-cachetools
PKG_VERSION:=5.5.0
PKG_RELEASE:=1

PYPI_NAME:=cachetools
PKG_HASH:=2cc24fb4cbe39633fb7badd9db9ca6295d766d9c2995f245725a46715d050f2a

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-cachetools
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Extensible memoizing collections and decorators
  URL:=https://github.com/tkem/cachetools/
  DEPENDS:=+python3
endef

define Package/python3-cachetools/description
This module provides various memoizing collections and decorators, including variants of the Python Standard Library’s @lru_cache function decorator.
endef

$(eval $(call Py3Package,python3-cachetools))
$(eval $(call BuildPackage,python3-cachetools))
$(eval $(call BuildPackage,python3-cachetools-src))
