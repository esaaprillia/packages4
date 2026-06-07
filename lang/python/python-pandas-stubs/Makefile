include $(TOPDIR)/rules.mk

PKG_NAME:=python-pandas-stubs
PKG_VERSION:=3.0.3.260530
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=pandas_stubs
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-poetry-core/host python-pandas/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pandas-stubs
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Type annotations for pandas
  URL:=https://pandas.pydata.org/
  DEPENDS:=+python3 +python3-numpy
endef

define Package/python3-pandas-stubs/description
pandas-stubs: Public type stubs for pandas
endef

$(eval $(call Py3Package,python3-pandas-stubs))
$(eval $(call BuildPackage,python3-pandas-stubs))
$(eval $(call BuildPackage,python3-pandas-stubs-src))
