include $(TOPDIR)/rules.mk

PKG_NAME:=python-pytest-timeout
PKG_VERSION:=2.4.0
PKG_RELEASE:=1

PYPI_NAME:=pytest_timeout
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pytest-timeout
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=pytest plugin to abort hanging tests
  URL:=https://github.com/pytest-dev/pytest-timeout
  DEPENDS:=+python3 +python3-pytest
endef

define Package/python3-pytest-timeout/description
  This plugin will time each test and terminate it when it takes too long. Termination may or may not be graceful, please see below, but when aborting it will show a stack dump of all thread running at the time.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pytest-timeout))
$(eval $(call BuildPackage,python3-pytest-timeout))
$(eval $(call BuildPackage,python3-pytest-timeout-src))
