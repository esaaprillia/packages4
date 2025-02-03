include $(TOPDIR)/rules.mk

PKG_NAME:=python-types-pytz
PKG_VERSION:=2024.2.0.20241221
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=types_pytz
PKG_HASH:=06d7cde9613e9f7504766a0554a270c369434b50e00975b3a4a0f6eed0f2c1a9

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-types-pytz
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Typing stubs for pytz
  URL:=https://github.com/python/typeshed
  DEPENDS:=+python3
endef

define Package/python3-types-pytz/description
This package is part of the typeshed project. All fixes for types and metadata should be contributed there. See the README for more details. The source for this package can be found in the stubs/pytz directory.
endef

$(eval $(call Py3Package,python3-types-pytz))
$(eval $(call BuildPackage,python3-types-pytz))
$(eval $(call BuildPackage,python3-types-pytz-src))
