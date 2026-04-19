include $(TOPDIR)/rules.mk

PKG_NAME:=python-w3lib
PKG_VERSION:=2.4.1
PKG_RELEASE:=1

PYPI_NAME:=w3lib
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-w3lib
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Library of web-related functions
  URL:=https://github.com/scrapy/w3lib
  DEPENDS:= \
	+python3
endef

define Package/python3-w3lib/description
  This is a Python library of web-related functions
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-w3lib))
$(eval $(call BuildPackage,python3-w3lib))
$(eval $(call BuildPackage,python3-w3lib-src))
