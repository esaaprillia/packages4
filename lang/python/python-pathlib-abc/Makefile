include $(TOPDIR)/rules.mk

PKG_NAME:=python-pathlib-abc
PKG_VERSION:=0.5.2
PKG_RELEASE:=1

PYPI_NAME:=pathlib_abc
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=PSF
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pathlib-abc
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Backport of pathlib ABCs
  URL:=https://github.com/barneygale/pathlib-abc
  DEPENDS:= \
	+python3-light
endef

define Package/python3-pathlib-abc/description
Base classes for pathlib.Path-ish objects. Requires Python 3.9+.
endef

$(eval $(call Py3Package,python3-pathlib-abc))
$(eval $(call BuildPackage,python3-pathlib-abc))
$(eval $(call BuildPackage,python3-pathlib-abc-src))
