include $(TOPDIR)/rules.mk

PKG_NAME:=python-json5
PKG_VERSION:=0.15.0
PKG_RELEASE:=1

PYPI_NAME:=json5
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

define Package/python3-json5
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A Python implementation of the JSON5 data format.
  URL:=https://github.com/dpranke/pyjson5
  DEPENDS:=+python3
endef

define Package/python3-json5/description
A Python implementation of the JSON5 data format.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-json5))
$(eval $(call BuildPackage,python3-json5))
$(eval $(call BuildPackage,python3-json5-src))
