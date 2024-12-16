include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyrfc3339
PKG_VERSION:=2.0.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PYPI_NAME:=pyrfc3339
PKG_HASH:=e47843379ea35c1296c3b6c67a948a1a490ae0584edfcbdea0eaffb5dd29960b

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyrfc3339
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Generate and parse RFC 3339 timestamps
  URL:=https://pyrfc3339.readthedocs.io/
  DEPENDS:=+python3 +python3-pytz
endef

define Package/python3-pyrfc3339/description
pyRFC3339 parses and generates RFC 3339-compliant timestamps using Python datetime.datetime objects.
endef

PYTHON3_PKG_WHEEL_NAME:=pyRFC3339
PYTHON3_PKG_WHEEL_VERSION:=2.0.1

$(eval $(call Py3Package,python3-pyrfc3339))
$(eval $(call BuildPackage,python3-pyrfc3339))
$(eval $(call BuildPackage,python3-pyrfc3339-src))
