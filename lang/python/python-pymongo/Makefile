include $(TOPDIR)/rules.mk

PKG_NAME:=python-pymongo
PKG_VERSION:=4.17.0
PKG_RELEASE:=1

PYPI_NAME:=pymongo
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-requirements-txt/host
HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-hatchling/host python-hatch-requirements-txt/host python-dnspython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pymongo
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=PyMongo - the Official MongoDB Python driver
  URL:=https://github.com/mongodb/mongo-python-driver
  DEPENDS:=+python3 +python3-dnspython
endef

define Package/python3-pymongo/description
The PyMongo distribution contains tools for interacting with MongoDB database from Python.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pymongo))
$(eval $(call BuildPackage,python3-pymongo))
$(eval $(call BuildPackage,python3-pymongo-src))
