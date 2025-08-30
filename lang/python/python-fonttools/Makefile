include $(TOPDIR)/rules.mk

PKG_NAME:=python-fonttools
PKG_VERSION:=4.59.2
PKG_RELEASE:=1

PYPI_NAME:=fonttools
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE LICENSE.external

PKG_BUILD_DEPENDS:=python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-fonttools
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Tools to manipulate font files
  URL:=https://github.com/fonttools/fonttools
  DEPENDS:=+python3
endef

define Package/python3-fonttools/description
  fontTools is a library for manipulating fonts, written in Python.
  The project includes the TTX tool, that can convert TrueType and OpenType fonts to and from an XML text format, which is also called TTX.
  It supports TrueType, OpenType, AFM and to an extent Type 1 and some Mac-specific formats.
endef

$(eval $(call Py3Package,python3-fonttools))
$(eval $(call BuildPackage,python3-fonttools))
$(eval $(call BuildPackage,python3-fonttools-src))
