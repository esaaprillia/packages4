include $(TOPDIR)/rules.mk

PKG_NAME:=python-itemloaders
PKG_VERSION:=1.4.0
PKG_RELEASE:=1

PYPI_NAME:=itemloaders
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

define Package/python3-itemloaders
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Base library for scrapy's ItemLoader
  URL:=https://github.com/scrapy/itemloaders
  DEPENDS:= \
	+python3 \
	+python3-itemadapter \
	+python3-jmespath \
	+python3-parsel
endef

define Package/python3-itemloaders/description
  itemloaders is a library that helps you collect data from HTML and XML sources.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-itemloaders))
$(eval $(call BuildPackage,python3-itemloaders))
$(eval $(call BuildPackage,python3-itemloaders-src))
