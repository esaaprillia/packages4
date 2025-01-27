include $(TOPDIR)/rules.mk

PKG_NAME:=python-ld2410-ble
PKG_VERSION:=0.2.0
PKG_RELEASE:=1

PYPI_NAME:=ld2410_ble
PKG_HASH:=25046e10709cff9d735b28dadb089ee0ae967edf37e0e946b3f182390da67226

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-ld2410-ble
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Interface with LD2410B modules from HiLink
  URL:=https://github.com/930913/ld2410-ble
  DEPENDS:=+python3
endef

define Package/python3-ld2410-ble/description
Interface with LD2410B modules from HiLink
endef

$(eval $(call Py3Package,python3-ld2410-ble))
$(eval $(call BuildPackage,python3-ld2410-ble))
$(eval $(call BuildPackage,python3-ld2410-ble-src))
