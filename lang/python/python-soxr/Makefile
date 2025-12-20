include $(TOPDIR)/rules.mk

PKG_NAME:=python-soxr
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PYPI_NAME:=soxr
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=COPYING.LGPL LICENSE.txt

PKG_BUILD_DEPENDS:=python-scikit-build-core/host python-nanobind/host python-setuptools-scm/host numpy/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-soxr
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=High quality, one-dimensional sample-rate conversion library
  URL:=https://python-soxr.readthedocs.io/
  DEPENDS:= \
	+python3-light \
	+soxr
endef

define Package/python3-soxr/description
High quality, one-dimensional sample-rate conversion library for Python.
endef

PYTHON3_PKG_SETUP_VARS += CMAKE_ARGS="-DUSE_SYSTEM_LIBSOXR=ON -DSOXR_INCLUDE_DIR=$(STAGING_DIR)/usr/include -DSOXR_LIBRARY=$(STAGING_DIR)/usr/lib"

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-soxr))
$(eval $(call BuildPackage,python3-soxr))
$(eval $(call BuildPackage,python3-soxr-src))
