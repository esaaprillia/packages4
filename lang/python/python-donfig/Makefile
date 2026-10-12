include $(TOPDIR)/rules.mk

PKG_NAME:=python-donfig
PKG_VERSION:=0.8.1
PKG_RELEASE:=1

PYPI_NAME:=donfig
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=DASK_LICENSE.txt LICENSE.txt

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-donfig
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python package for configuring a python package
  URL:=https://github.com/pytroll/donfig
  DEPENDS:= \
	+python3-light \
	+python3-yaml
endef

define Package/python3-donfig/description
Donfig is a python library meant to make configuration easier for other python packages.
endef

$(eval $(call Py3Package,python3-donfig))
$(eval $(call BuildPackage,python3-donfig))
$(eval $(call BuildPackage,python3-donfig-src))
