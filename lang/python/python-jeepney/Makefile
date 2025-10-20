include $(TOPDIR)/rules.mk

PKG_NAME:=python-jeepney
PKG_VERSION:=0.9.0
PKG_RELEASE:=1

PYPI_NAME:=jeepney
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-flit-core/host
HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-jeepney
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Low-level, pure Python DBus protocol wrapper.
  URL:=https://jeepney.readthedocs.io
  DEPENDS:=+python3 +python3-trio
endef

define Package/python3-jeepney/description
Jeepney is a pure Python implementation of D-Bus messaging. It has an I/O-free core, and integration modules for different event loops.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-jeepney))
$(eval $(call BuildPackage,python3-jeepney))
$(eval $(call BuildPackage,python3-jeepney-src))
