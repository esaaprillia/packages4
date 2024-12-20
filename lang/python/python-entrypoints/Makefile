include $(TOPDIR)/rules.mk

PKG_NAME:=python-entrypoints
PKG_VERSION:=0.4
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=entrypoints
PKG_HASH:=b706eddaa9218a19ebcd67b56818f05bb27589b1ca9e8d797b74affad4ccacd4

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-entrypoints
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Discover and load entry points from installed packages.
  URL:=https://entrypoints.readthedocs.io/
  DEPENDS:=+python3
endef

define Package/python3-entrypoints/description
This package is in maintenance-only mode. New code should use the importlib.metadata module in the Python standard library to find and load entry points.
endef

$(eval $(call Py3Package,python3-entrypoints))
$(eval $(call BuildPackage,python3-entrypoints))
$(eval $(call BuildPackage,python3-entrypoints-src))
