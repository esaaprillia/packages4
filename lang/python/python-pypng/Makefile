include $(TOPDIR)/rules.mk

PKG_NAME:=python-pypng
PKG_VERSION:=0.20250521.0
PKG_RELEASE:=1

PYPI_NAME:=pypng-pypng
PKG_SOURCE_URL:=https://gitlab.com/drj11/pypng/-/archive/pypng-$(PKG_VERSION)/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=License

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pypng
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Pure Python library for saving and loading PNG images
  URL:=https://pypng.readthedocs.io/en/latest/
  DEPENDS:=+python3
endef

define Package/python3-pypng/description
PNG module for Python. PyPNG is written entirely in Python.
endef

PYTHON3_PKG_WHEEL_NAME:=pypng
PYTHON3_PKG_WHEEL_VERSION:=0.20250521.0

$(eval $(call Py3Package,python3-pypng))
$(eval $(call BuildPackage,python3-pypng))
$(eval $(call BuildPackage,python3-pypng-src))
