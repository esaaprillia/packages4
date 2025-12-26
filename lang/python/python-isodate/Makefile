include $(TOPDIR)/rules.mk

PKG_NAME:=python-isodate
PKG_VERSION:=0.7.2
PKG_RELEASE:=1

PYPI_NAME:=isodate
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host
HOST_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-isodate
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=An ISO 8601 date/time/duration parser and formatter
  URL:=https://github.com/gweis/isodate/
  DEPENDS:=+python3-light
endef

define Package/python3-isodate/description
This module implements ISO 8601 date, time and duration parsing.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-isodate))
$(eval $(call BuildPackage,python3-isodate))
$(eval $(call BuildPackage,python3-isodate-src))
