include $(TOPDIR)/rules.mk

PKG_NAME:=python-huey
PKG_VERSION:=2.5.4
PKG_RELEASE:=1

PYPI_NAME:=huey
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-huey
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=a little task queue for python
  URL:=https://huey.readthedocs.io/
  DEPENDS:=+python3 +python3-redis
endef

define Package/python3-huey/description
a lightweight alternative.
endef

$(eval $(call Py3Package,python3-huey))
$(eval $(call BuildPackage,python3-huey))
$(eval $(call BuildPackage,python3-huey-src))
