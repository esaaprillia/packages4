include $(TOPDIR)/rules.mk

PKG_NAME:=python-bson
PKG_VERSION:=0.5.10
PKG_RELEASE:=1

PYPI_NAME:=bson
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE LICENSE_APACHE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-dateutil/host python-six/host python-pymongo/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-bson
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=BSON codec for Python
  URL:=http://github.com/py-bson/bson
  DEPENDS:=+python3 +python3-dateutil +python3-six
endef

define Package/python3-bson/description
Independent BSON codec for Python that doesn’t depend on MongoDB.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-bson))
$(eval $(call BuildPackage,python3-bson))
$(eval $(call BuildPackage,python3-bson-src))
