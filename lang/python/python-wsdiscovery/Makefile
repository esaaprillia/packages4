include $(TOPDIR)/rules.mk

PKG_NAME:=python-wsdiscovery
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

define Package/python3-wsdiscovery
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=WS-Discovery implementation for python
  URL:=https://python-ws-discovery.readthedocs.io/
  DEPENDS:= \
	+python3-light \
	+python3-ifaddr \
	+python3-click
endef

define Package/python3-wsdiscovery/description
This is WS-Discovery implementation for Python 3.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-wsdiscovery))
$(eval $(call BuildPackage,python3-wsdiscovery))
$(eval $(call BuildPackage,python3-wsdiscovery-src))
