include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyhik
PKG_VERSION:=0.4.0
PKG_RELEASE:=1

PYPI_NAME:=pyhik
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pyhik
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python wrapper for Hikvision camera event stream
  URL:=https://github.com/mezz64/pyhik
  DEPENDS:= \
	+python3 \
	+python3-requests \
	+python3-xmltodict
endef

define Package/python3-pyhik/description
This is a python module aiming to expose common API events from a Hikvision IP camera or nvr. Most rebadged models work as well with full functionality.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pyhik))
$(eval $(call BuildPackage,python3-pyhik))
$(eval $(call BuildPackage,python3-pyhik-src))
