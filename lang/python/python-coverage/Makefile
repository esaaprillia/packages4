include $(TOPDIR)/rules.mk

PKG_NAME:=python-coverage
PKG_VERSION:=7.10.6
PKG_RELEASE:=1

PYPI_NAME:=coverage
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache 2.0 and MIT
PKG_LICENSE_FILES:=LICENSE.txt

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-coverage
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Code coverage measurement for Python
  URL:=https://github.com/nedbat/coveragepy
  DEPENDS:=+python3
endef

define Package/python3-coverage/description
  Coverage.py measures code coverage, typically during test execution. It uses the code analysis tools and tracing hooks provided in the Python standard library to determine which lines are executable, and which have been executed.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-coverage))
$(eval $(call BuildPackage,python3-coverage))
$(eval $(call BuildPackage,python3-coverage-src))
