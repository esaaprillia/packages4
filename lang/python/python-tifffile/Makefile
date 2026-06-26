include $(TOPDIR)/rules.mk

PKG_NAME:=python-tifffile
PKG_VERSION:=2026.6.1
PKG_RELEASE:=1

PYPI_NAME:=tifffile
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-tifffile
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Read and write TIFF files
  URL:=https://www.cgohlke.com/
  DEPENDS:= \
	+python3 \
	+python3-numpy
endef

define Package/python3-tifffile/description
  Image data can be read as NumPy arrays or Zarr arrays/groups from strips, tiles, pages (IFDs), SubIFDs, higher-order series, and pyramidal levels.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-tifffile))
$(eval $(call BuildPackage,python3-tifffile))
$(eval $(call BuildPackage,python3-tifffile-src))
