include $(TOPDIR)/rules.mk

PKG_NAME:=python-beautifulsoup4
PKG_VERSION:=4.14.3
PKG_RELEASE:=1

PYPI_NAME:=beautifulsoup4
PKG_HASH:=skip

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>

PKG_BUILD_DEPENDS:=python-hatchling/host
HOST_BUILD_DEPENDS:=python-hatchling/host python-typing-extensions/host python-soupsieve/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-beautifulsoup4
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Screen-scraping library
  URL:=https://www.crummy.com/software/BeautifulSoup/
  DEPENDS:= \
	+python3 \
	+python3-typing-extensions \
	+python3-soupsieve
endef

define Package/python3-beautifulsoup4/description
Beautiful Soup is a library that makes it easy to scrape information from web pages.
It sits atop an HTML or XML parser, providing Pythonic idioms for iterating, searching, and modifying the parse tree.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-beautifulsoup4))
$(eval $(call BuildPackage,python3-beautifulsoup4))
$(eval $(call BuildPackage,python3-beautifulsoup4-src))
