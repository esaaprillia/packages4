include $(TOPDIR)/rules.mk

PKG_NAME:=python-convertertools
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PYPI_NAME:=convertertools
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-convertertools
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Tools for converting python data types
  URL:=https://github.com/bluetooth-devices/convertertools
  DEPENDS:=+python3
endef

define Package/python3-convertertools/description
These are very simple tools for manipulating python data structures to avoid writing out the same code many times in libraries.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-convertertools))
$(eval $(call BuildPackage,python3-convertertools))
$(eval $(call BuildPackage,python3-convertertools-src))
