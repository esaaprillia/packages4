include $(TOPDIR)/rules.mk

PKG_NAME:=python-tomli
PKG_VERSION:=2.0.1
PKG_RELEASE:=1

PYPI_NAME:=tomli
PKG_HASH:=de526c12914f0c550d15924c62d72abc48d6fe7364aa87328337a31007fe8a4f

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-tomli
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A lil' TOML parser
  URL:=https://github.com/hukkin/tomli
  DEPENDS:=+python3
endef

define Package/python3-tomli/description
  Tomli is a Python library for parsing TOML. It is fully compatible with TOML v1.0.0.
  A version of Tomli, the tomllib module, was added to the standard library in Python 3.11 via PEP 680.
  Tomli continues to provide a backport on PyPI for Python versions where the standard library module is not available and that have not yet reached their end-of-life.
endef

$(eval $(call Py3Package,python3-tomli))
$(eval $(call BuildPackage,python3-tomli))
$(eval $(call BuildPackage,python3-tomli-src))
