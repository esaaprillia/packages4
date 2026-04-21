include $(TOPDIR)/rules.mk

PKG_NAME:=python-pylru
PKG_VERSION:=1.3.1
PKG_RELEASE:=1

PYPI_NAME:=pylru
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pylru
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A least recently used (LRU) cache implementation
  URL:=https://github.com/jlhutch/pylru
  DEPENDS:= \
	+python3
endef

define Package/python3-pylru/description
A least recently used (LRU) cache for Python.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pylru))
$(eval $(call BuildPackage,python3-pylru))
$(eval $(call BuildPackage,python3-pylru-src))
