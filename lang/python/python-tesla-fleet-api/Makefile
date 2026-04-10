include $(TOPDIR)/rules.mk

PKG_NAME:=python-tesla-fleet-api
PKG_VERSION:=1.4.5
PKG_RELEASE:=1

PYPI_NAME:=tesla_fleet_api
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-tesla-fleet-api
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Tesla Fleet API library for Python
  URL:=https://github.com/Teslemetry/python-tesla-fleet-api
  DEPENDS:= \
	+python3-light \
	+python3-aiohttp \
	+python3-aiofiles \
	+python3-aiolimiter \
	+python3-cryptography \
	+python3-protobuf \
	+python3-bleak \
	+python3-bleak-retry-connector
endef

define Package/python3-tesla-fleet-api/description
  Tesla Fleet API is a Python library that provides an interface to interact with Tesla's Fleet API, including signed commands and encrypted local Bluetooth (BLE) communication.
  It also supports interactions with Teslemetry and Tessie services.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-tesla-fleet-api))
$(eval $(call BuildPackage,python3-tesla-fleet-api))
$(eval $(call BuildPackage,python3-tesla-fleet-api-src))
