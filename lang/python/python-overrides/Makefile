include $(TOPDIR)/rules.mk

PKG_NAME:=python-overrides
PKG_VERSION:=7.7.0
PKG_RELEASE:=1

PYPI_NAME:=overrides
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

define Package/python3-overrides
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A decorator to automatically detect mismatch when overriding a method.
  URL:=https://github.com/mkorpela/overrides
  DEPENDS:=+python3
endef

define Package/python3-overrides/description
A decorator @override that verifies that a method that should override an inherited method actually does it.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-overrides))
$(eval $(call BuildPackage,python3-overrides))
$(eval $(call BuildPackage,python3-overrides-src))
