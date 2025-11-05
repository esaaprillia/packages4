include $(TOPDIR)/rules.mk

PKG_NAME:=python-wdsiscovery
PKG_VERSION:=2.1.2
PKG_RELEASE:=1

PYPI_NAME:=WSDiscovery
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-3.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-ifaddr/host python-click/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-wdsiscovery
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=WS-Discovery implementation for python
  URL:=https://python-ws-discovery.readthedocs.io/
  DEPENDS:=+python3-light +python3-ifaddr +python3-click
endef

define Package/python3-wdsiscovery/description
This is WS-Discovery implementation for Python 3. It allows to both discover services and publish discoverable services. For Python 2 support, use the latest 1.x version of this package.
endef

PYTHON3_PKG_WHEEL_NAME:=wdsiscovery
PYTHON3_PKG_WHEEL_VERSION:=2.1.2

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-wdsiscovery))
$(eval $(call BuildPackage,python3-wdsiscovery))
$(eval $(call BuildPackage,python3-wdsiscovery-src))
