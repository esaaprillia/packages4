include $(TOPDIR)/rules.mk

PKG_NAME:=python-huawei-lte-api
PKG_VERSION:=1.11.0
PKG_RELEASE:=1

PYPI_NAME:=huawei-lte-api
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-3.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-huawei-lte-api
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=API For huawei LAN/WAN LTE Modems
  URL:=https://github.com/Salamek/huawei-lte-api
  DEPENDS:=+python3 +python3-requests +python3-xmltodict +python3-cryptodomex
endef

define Package/python3-huawei-lte-api/description
API For huawei LAN/WAN LTE Modems, you can use this to simply send SMS, get information about your internet usage, signal, and tons of other stuff
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-huawei-lte-api))
$(eval $(call BuildPackage,python3-huawei-lte-api))
$(eval $(call BuildPackage,python3-huawei-lte-api-src))
