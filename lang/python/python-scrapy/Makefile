include $(TOPDIR)/rules.mk

PKG_NAME:=python-scrapy
PKG_VERSION:=2.15.0
PKG_RELEASE:=1

PYPI_NAME:=scrapy
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

define Package/python3-scrapy
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A high-level Web Crawling and Web Scraping framework
  URL:=https://github.com/scrapy/scrapy
  DEPENDS:= \
	+python3 \
	+python3-twisted \
	+python3-cryptography \
	+python3-cssselect \
	+python3-defusedxml \
	+python3-itemadapter \
	+python3-itemloaders \
	+python3-lxml \
	+python3-packaging \
	+python3-parsel \
	+python3-protego \
	+python3-pyopenssl \
	+python3-queuelib \
	+python3-service-identity \
	+python3-tldextract \
	+python3-w3lib \
	+python3-zope-interface \
	+python3-pydispatcher
endef

define Package/python3-scrapy/description
  Scrapy is a web scraping framework to extract structured data from websites.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-scrapy))
$(eval $(call BuildPackage,python3-scrapy))
$(eval $(call BuildPackage,python3-scrapy-src))
