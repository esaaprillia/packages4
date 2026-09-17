include $(TOPDIR)/rules.mk

PKG_NAME:=python-pillow-heif
PKG_VERSION:=1.7.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt LICENSES_bundled.txt

PYPI_NAME:=pillow_heif
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pillow-heif
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python library for working with HEIF images and plugin for Pillow.
  URL:=https://github.com/bigcat88/pillow_heif
  DEPENDS:= \
	+python3 \
	+python3-pillow \
	+libheif
endef

define Package/python3-pillow-heif/description
Python bindings to libheif for working with HEIF images and plugin for Pillow.
endef

$(eval $(call Py3Package,python3-pillow-heif))
$(eval $(call BuildPackage,python3-pillow-heif))
$(eval $(call BuildPackage,python3-pillow-heif-src))
