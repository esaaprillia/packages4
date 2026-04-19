include $(TOPDIR)/rules.mk

PKG_NAME:=python-parsel
PKG_VERSION:=1.11.0
PKG_RELEASE:=1

PYPI_NAME:=parsel
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

define Package/python3-parsel
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Parsel is a library to extract data from HTML and XML using XPath and CSS selectors
  URL:=https://github.com/scrapy/parsel
  DEPENDS:= \
	+python3 \
	+python3-cssselect \
	+python3-jmespath \
	+python3-lxml \
	+python3-packaging \
	+python3-w3lib
endef

define Package/python3-parsel/description
  Parsel is a BSD-licensed Python library to extract data from HTML, JSON, and XML documents.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-parsel))
$(eval $(call BuildPackage,python3-parsel))
$(eval $(call BuildPackage,python3-parsel-src))
