include $(TOPDIR)/rules.mk

PKG_NAME:=python-gcode-thumbnail-tool
PKG_VERSION:=0.1.2
PKG_RELEASE:=1

PYPI_NAME:=gcode_thumbnail_tool
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=AGPL-3.0
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-gcode-thumbnail-tool
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A small tool to analyse and extract thumbnails rendered into GCODE files
  URL:=https://github.com/OctoPrint/gcode-thumbnail-tool
  DEPENDS:= \
	+python3 \
	+python3-pillow
endef

define Package/python3-gcode-thumbnail-tool/description
A small tool to analyse and extract thumbnails rendered into GCODE files.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-gcode-thumbnail-tool))
$(eval $(call BuildPackage,python3-gcode-thumbnail-tool))
$(eval $(call BuildPackage,python3-gcode-thumbnail-tool-src))
