include $(TOPDIR)/rules.mk

PKG_NAME:=python-pandas
PKG_VERSION:=2.3.2
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=pandas
PKG_HASH:=skip

HOST_BUILD_DEPENDS:=numpy/host python-cython/host meson-python/host python-versioneer/host
PKG_BUILD_DEPENDS:=numpy/host python-cython/host meson-python/host python-versioneer/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../meson/meson.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pandas
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Powerful data structures for data analysis, time series, and statistics
  URL:=https://pandas.pydata.org/
  DEPENDS:=+python3 +python3-numpy +python3-dateutil +python3-tzdata +python3-pytz
endef

define Package/python3-pandas/description
pandas is a Python package that provides fast, flexible, and expressive data structures designed to make working with "relational" or "labeled" data both easy and intuitive.
It aims to be the fundamental high-level building block for doing practical, real world data analysis in Python.
Additionally, it has the broader goal of becoming the most powerful and flexible open source data analysis / manipulation tool available in any language. It is already well on its way towards this goal.
endef

define Host/Prepare
	$(call Host/Prepare/Default)
	$(INSTALL_CONF) files/native/__init__.py $(HOST_PYTHON3_PKG_DIR)/mesonpy/
endef

define Build/Prepare
	$(call Build/Prepare/Default)
	$(INSTALL_CONF) files/cross/__init__.py $(HOST_PYTHON3_PKG_DIR)/mesonpy/
endef

$(eval $(call Py3Package,python3-pandas))
$(eval $(call BuildPackage,python3-pandas))
$(eval $(call BuildPackage,python3-pandas-src))
$(eval $(call HostBuild))
