include $(TOPDIR)/rules.mk

PKG_NAME:=python-dateparser
PKG_VERSION:=1.3.0
PKG_RELEASE:=1

PYPI_NAME:=dateparser
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-dateparser
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Date parsing library designed to parse dates from HTML pages
  URL:=https://dateparser.readthedocs.org/
  DEPENDS:= \
	+python3-light \
	+python3-dateutil \
	+python3-pytz \
	+python3-regex \
	+python3-tzlocal
endef

define Package/python3-dateparser/description
python parser for human readable dates
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-dateparser))
$(eval $(call BuildPackage,python3-dateparser))
$(eval $(call BuildPackage,python3-dateparser-src))
