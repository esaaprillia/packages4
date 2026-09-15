include $(TOPDIR)/rules.mk

PKG_NAME:=python-pvlib
PKG_VERSION:=0.15.2
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=pvlib
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pvlib
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A set of documented functions for simulating the performance of photovoltaic energy systems.
  URL:=https://github.com/pvlib/pvlib-python
  DEPENDS:= \
	+python3 \
	+python3-numpy \
	+python3-pandas \
	+python3-pytz \
	+python3-requests \
	+python3-scipy \
	+python3-h5py \
	+python3-tzdata
endef

define Package/python3-pvlib/description
pvlib python is a community developed toolbox that provides a set of functions and classes for simulating the performance of photovoltaic energy systems and accomplishing related tasks.
endef

$(eval $(call Py3Package,python3-pvlib))
$(eval $(call BuildPackage,python3-pvlib))
$(eval $(call BuildPackage,python3-pvlib-src))
