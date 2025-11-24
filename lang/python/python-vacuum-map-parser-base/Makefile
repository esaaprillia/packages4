include $(TOPDIR)/rules.mk

PKG_NAME:=python-vacuum-map-parser-base
PKG_VERSION:=0.1.5
PKG_RELEASE:=1

PYPI_NAME:=vacuum_map_parser_base
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

define Package/python3-vacuum-map-parser-base
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Common code for vacuum map parsers
  URL:=https://github.com/PiotrMachowski/Python-package-vacuum-map-parser-base
  DEPENDS:=+python3 +python3-pillow
endef

define Package/python3-vacuum-map-parser-base/description
Package that contains base classes that should be extended by a vacuum-specific implementation of a map parser.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-vacuum-map-parser-base))
$(eval $(call BuildPackage,python3-vacuum-map-parser-base))
$(eval $(call BuildPackage,python3-vacuum-map-parser-base-src))
