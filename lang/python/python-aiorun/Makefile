include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiorun
PKG_VERSION:=2024.8.1
PKG_RELEASE:=1

PYPI_NAME:=aiorun
PKG_HASH:=87ea66b6146756ced58175d2f5ae64519ef96c4657f46b0e0c036e541a22c764

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-aiorun
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Boilerplate for asyncio applications
  URL:=https://github.com/cjrh/aiorun
  DEPENDS:=+python3
endef

define Package/python3-aiorun/description
A run function for asyncio-based apps that does all the boilerplate.
endef

$(eval $(call Py3Package,python3-aiorun))
$(eval $(call BuildPackage,python3-aiorun))
$(eval $(call BuildPackage,python3-aiorun-src))
