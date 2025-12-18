include $(TOPDIR)/rules.mk

PKG_NAME:=python-flexcache
PKG_VERSION:=0.3
PKG_RELEASE:=1

PYPI_NAME:=flexcache
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-flexcache
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Saves and loads to the cache a transformed versions of a source object.
  URL:=https://github.com/hgrecco/flexcache
  DEPENDS:= \
	+python3-typing-extensions
endef

define Package/python3-flexcache/description
An robust and extensible package to cache on disk the result of expensive calculations.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-flexcache))
$(eval $(call BuildPackage,python3-flexcache))
$(eval $(call BuildPackage,python3-flexcache-src))
