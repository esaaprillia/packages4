include $(TOPDIR)/rules.mk

PKG_NAME:=python-ecobee-api
PKG_VERSION:=0.3.2
PKG_RELEASE:=1

PYPI_NAME:=python_ecobee_api
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-ecobee-api
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python API for talking to Ecobee thermostats
  URL:=https://github.com/nkgilley/python-ecobee-api
  DEPENDS:=+python3 +python3-requests
endef

define Package/python3-ecobee-api/description
Package to retrieve PV information from the growatt server.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-ecobee-api))
$(eval $(call BuildPackage,python3-ecobee-api))
$(eval $(call BuildPackage,python3-ecobee-api-src))
