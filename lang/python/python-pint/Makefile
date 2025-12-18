include $(TOPDIR)/rules.mk

PKG_NAME:=python-pint
PKG_VERSION:=0.25.2
PKG_RELEASE:=1

PYPI_NAME:=pint
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pint
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Physical quantities module
  URL:=https://pint.readthedocs.io/
  DEPENDS:= \
	+python3 \
	+python3-platformdirs \
	+python3-typing-extensions \
	+python3-flexcache \
	+python3-flexparser
endef

define Package/python3-pint/description
Pint is a Python package to define, operate and manipulate physical quantities: the product of a numerical value and a unit of measurement.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pint))
$(eval $(call BuildPackage,python3-pint))
$(eval $(call BuildPackage,python3-pint-src))
