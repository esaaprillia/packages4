include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyorbital
PKG_VERSION:=1.13.0
PKG_RELEASE:=1

PYPI_NAME:=pyorbital
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyorbital
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Scheduling satellite passes in Python
  URL:=https://pyorbital.readthedocs.io/en/latest/
  DEPENDS:= \
	+python3-light \
	+python3-numpy \
	+python3-scipy \
	+python3-requests \
	+python3-defusedxml \
	+python3-pyproj \
	+python3-donfig
endef

define Package/python3-pyorbital/description
This is the Pyorbital, a Python package for computing orbital parameters from TLE files, and making various astronomical computations.
endef

$(eval $(call Py3Package,python3-pyorbital))
$(eval $(call BuildPackage,python3-pyorbital))
$(eval $(call BuildPackage,python3-pyorbital-src))
