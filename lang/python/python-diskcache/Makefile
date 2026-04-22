include $(TOPDIR)/rules.mk

PKG_NAME:=python-diskcache
PKG_VERSION:=5.6.3
PKG_RELEASE:=1

PYPI_NAME:=diskcache
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-diskcache
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Disk Cache -- Disk and file backed persistent cache.
  URL:=https://github.com/grantjenks/python-diskcache
  DEPENDS:= \
	+python3
endef

define Package/python3-diskcache/description
DiskCache is an Apache2 licensed disk and file backed cache library, written in pure-Python, and compatible with Django.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-diskcache))
$(eval $(call BuildPackage,python3-diskcache))
$(eval $(call BuildPackage,python3-diskcache-src))
