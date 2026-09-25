include $(TOPDIR)/rules.mk

PKG_NAME:=python-playwright
PKG_VERSION:=1.63.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=playwright-python
PKG_SOURCE_URL:=https://github.com/microsoft/playwright-python/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-auditwheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-playwright
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A high-level API to automate web browsers
  URL:=https://github.com/Microsoft/playwright-python
  DEPENDS:= \
	+python3 \
	+python3-pyee \
	+python3-greenlet
endef

define Package/python3-playwright/description
Playwright is a Python library to automate Chromium, Firefox and WebKit browsers with a single API.
endef

PYTHON3_PKG_WHEEL_NAME:=playwright
PYTHON3_PKG_WHEEL_VERSION:=1.63.0

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-playwright))
$(eval $(call BuildPackage,python3-playwright))
$(eval $(call BuildPackage,python3-playwright-src))
