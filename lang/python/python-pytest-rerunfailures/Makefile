include $(TOPDIR)/rules.mk

PKG_NAME:=python-pytest-rerunfailures
PKG_VERSION:=16.0.1
PKG_RELEASE:=1

PYPI_NAME:=pytest_rerunfailures
PKG_HASH:=skip

PKG_LICENSE:=MPL-2.0
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pytest-rerunfailures
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=pytest plugin to re-run tests to eliminate flaky failures
  URL:=https://github.com/pytest-dev/pytest-rerunfailures
  DEPENDS:=+python3 +python3-packaging +python3-pytest
endef

define Package/python3-pytest-rerunfailures/description
pytest-rerunfailures is a plugin for pytest that re-runs tests to eliminate intermittent failures.
endef

$(eval $(call Py3Package,python3-pytest-rerunfailures))
$(eval $(call BuildPackage,python3-pytest-rerunfailures))
$(eval $(call BuildPackage,python3-pytest-rerunfailures-src))
