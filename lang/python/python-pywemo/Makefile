include $(TOPDIR)/rules.mk

PKG_NAME:=python-pywemo
PKG_VERSION:=1.4.0
PKG_RELEASE:=1

PYPI_NAME:=pywemo
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pywemo
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Lightweight Python module to discover and control WeMo devices
  URL:=https://github.com/pywemo/pywemo
  DEPENDS:= \
	+python3 \
	+python3-ifaddr \
	+python3-requests \
	+python3-urllib3 \
	+python3-lxml
endef

define Package/python3-pywemo/description
Python 3 module to setup, discover and control WeMo devices.
endef

$(eval $(call Py3Package,python3-pywemo))
$(eval $(call BuildPackage,python3-pywemo))
$(eval $(call BuildPackage,python3-pywemo-src))
