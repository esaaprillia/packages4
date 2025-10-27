include $(TOPDIR)/rules.mk

PKG_NAME:=python-ppk2-api
PKG_VERSION:=0.9.2
PKG_RELEASE:=1

PYPI_NAME:=ppk2-api
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=LICENSE.md

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-ppk2-api
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=API for Nordic Semiconductor's Power Profiler Kit II (PPK 2).
  URL:=http://irnas.eu/
  DEPENDS:=+python3 +python3-pyserial
endef

define Package/python3-ppk2-api/description
The new Nordic Semiconductor's Power Profiler Kit II (PPK 2) is very useful for real time measurement of device power consumption. The official nRF Connect Power Profiler tool provides a friendly GUI with real-time data display. However there is no support for automated power monitoring. The puropose of this Python API is to enable automated power monitoring and data logging in Python applications.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-ppk2-api))
$(eval $(call BuildPackage,python3-ppk2-api))
$(eval $(call BuildPackage,python3-ppk2-api-src))
