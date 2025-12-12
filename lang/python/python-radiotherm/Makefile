include $(TOPDIR)/rules.mk

PKG_NAME:=python-radiotherm
PKG_VERSION:=2.1.0
PKG_RELEASE:=1

PYPI_NAME:=radiotherm
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-radiotherm
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=client library for wifi thermostats sold by radiothermostat.com
  URL:=https://github.com/mhrivnak/radiotherm
  DEPENDS:=+python3
endef

define Package/python3-radiotherm/description
This is a library for communicating with a wifi-enabled home thermostat made by Radio Thermostat Company of America.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-radiotherm))
$(eval $(call BuildPackage,python3-radiotherm))
$(eval $(call BuildPackage,python3-radiotherm-src))
