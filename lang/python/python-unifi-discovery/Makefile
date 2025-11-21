include $(TOPDIR)/rules.mk

PKG_NAME:=python-unifi-discovery
PKG_VERSION:=1.2.0
PKG_RELEASE:=1

PYPI_NAME:=unifi_discovery
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-unifi-discovery
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Discovery Unifi Devices
  URL:=https://github.com/uilibs/unifi-discovery
  DEPENDS:=+python3 +python3-aiohttp +python3-pyroute2
endef

define Package/python3-unifi-discovery/description
unifi-discovery
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-unifi-discovery))
$(eval $(call BuildPackage,python3-unifi-discovery))
$(eval $(call BuildPackage,python3-unifi-discovery-src))
