include $(TOPDIR)/rules.mk

PKG_NAME:=python-bimmer-connected
PKG_VERSION:=0.17.3
PKG_RELEASE:=1

PYPI_NAME:=bimmer_connected
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-pbr/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-bimmer-connected
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Library to read data from the BMW Connected Drive portal
  URL:=https://bimmer-connected.readthedocs.io/
  DEPENDS:=+python3 +python3-httpx +python3-cryptodome +python3-pyjwt +python3-pillow
endef

define Package/python3-bimmer-connected/description
This is a simple library to query and control the status of your BMW, Mini, or Toyota Supra vehicle from the MyBMW portal.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-bimmer-connected))
$(eval $(call BuildPackage,python3-bimmer-connected))
$(eval $(call BuildPackage,python3-bimmer-connected-src))
