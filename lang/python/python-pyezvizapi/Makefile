include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyezvizapi
PKG_VERSION:=1.0.4.5
PKG_RELEASE:=1

PYPI_NAME:=pyezvizapi
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE LICENSE.md

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyezvizapi
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=EZVIZ API client for Home Assistant and CLI
  URL:=https://github.com/RenierM26/pyEzvizApi/
  DEPENDS:= \
	+python3-light \
	+python3-requests \
	+python3-xmltodict \
	+python3-cryptodome \
	+python3-paho-mqtt \
	+python3-pandas
endef

define Package/python3-pyezvizapi/description
Pilot your Ezviz cameras (and light bulbs) with this module.
endef

$(eval $(call Py3Package,python3-pyezvizapi))
$(eval $(call BuildPackage,python3-pyezvizapi))
$(eval $(call BuildPackage,python3-pyezvizapi-src))
