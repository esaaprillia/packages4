include $(TOPDIR)/rules.mk

PKG_NAME:=python-cached-ipaddress
PKG_VERSION:=0.10.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=cached_ipaddress
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-cached-ipaddress
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Cache construction of ipaddress objects
  URL:=https://github.com/bdraco/cached-ipaddress
  DEPENDS:=+python3 +python3-propcache
endef

define Package/python3-cached-ipaddress/description
This module keeps a cache of IPAddress objects and caches the properties on them.
It it useful when you frequently see the same ip addresses over and over and do not want to pay the overhead of constructing IPAddress objects over and over or checking their properties.
endef

$(eval $(call Py3Package,python3-cached-ipaddress))
$(eval $(call BuildPackage,python3-cached-ipaddress))
$(eval $(call BuildPackage,python3-cached-ipaddress-src))

