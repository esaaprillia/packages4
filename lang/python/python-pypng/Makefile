include $(TOPDIR)/rules.mk

PKG_NAME:=python-pypng
PKG_VERSION:=0.20220715.0
PKG_RELEASE:=1

PYPI_NAME:=pypng
PKG_HASH:=739c433ba96f078315de54c0db975aee537cbc3e1d0ae4ed9aab0ca1e427e2c1

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

$(eval $(call Py3Package,python3-pypng))
$(eval $(call BuildPackage,python3-pypng))
$(eval $(call BuildPackage,python3-pypng-src))
