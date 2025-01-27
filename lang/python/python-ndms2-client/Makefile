include $(TOPDIR)/rules.mk

PKG_NAME:=python-ndms2-client
PKG_VERSION:=0.1.3
PKG_RELEASE:=1

PYPI_NAME:=ndms2_client
PKG_HASH:=cedbf2c08f07a031bb6c6e0eaf84ed2450706eaee67a7eba0134bf9ba4e579f4

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-ndms2-client
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Keenetic NDMS 2.x, 3.x, and 4.x client
  URL:=https://github.com/foxel/python_ndms2_client
  DEPENDS:=+python3-logging
endef

define Package/python3-ndms2-client/description
  Keenetic NDMS v2 client library.
endef

$(eval $(call Py3Package,python3-ndms2-client))
$(eval $(call BuildPackage,python3-ndms2-client))
$(eval $(call BuildPackage,python3-ndms2-client-src))
