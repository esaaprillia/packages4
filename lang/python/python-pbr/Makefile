include $(TOPDIR)/rules.mk

PKG_NAME:=python-pbr
PKG_VERSION:=7.0.3
PKG_RELEASE:=1

PYPI_NAME:=pbr
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

define Package/python3-pbr
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python Build Reasonableness
  URL:=https://docs.openstack.org/pbr/
  DEPENDS:=+python3
endef

define Package/python3-pbr/description
PBR is a library that injects some useful and sensible default behaviors into your setuptools run.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pbr))
$(eval $(call BuildPackage,python3-pbr))
$(eval $(call BuildPackage,python3-pbr-src))
