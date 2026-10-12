include $(TOPDIR)/rules.mk

PKG_NAME:=python-dask
PKG_VERSION:=2026.8.0
PKG_RELEASE:=1

PYPI_NAME:=dask
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-dask
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Parallel PyData with Task Scheduling
  URL:=https://github.com/dask/dask/
  DEPENDS:= \
	+python3-light \
	+python3-click \
	+python3-cloudpickle \
	+python3-fsspec \
	+python3-packaging \
	+python3-partd \
	+python3-pyyaml \
	+python3-toolz \
	+python3-importlib-metadata
endef

define Package/python3-dask/description
Dask is a flexible parallel computing library for analytics.
endef

$(eval $(call Py3Package,python3-dask))
$(eval $(call BuildPackage,python3-dask))
$(eval $(call BuildPackage,python3-dask-src))
