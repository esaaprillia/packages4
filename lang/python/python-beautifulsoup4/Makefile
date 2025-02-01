include $(TOPDIR)/rules.mk

PKG_NAME:=python-beautifulsoup4
PKG_VERSION:=4.12.3
PKG_RELEASE:=1

PYPI_NAME:=beautifulsoup4
PKG_HASH:=74e3d1928edc070d21748185c46e3fb33490f22f52a3addee9aee0f4f7781051

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-beautifulsoup4
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Screen-scraping library
  URL:=https://www.crummy.com/software/BeautifulSoup/
  DEPENDS:=+python3-light +python3-soupsieve
endef

define Package/python3-beautifulsoup4/description
Beautiful Soup is a library that makes it easy to scrape information from web pages.
It sits atop an HTML or XML parser, providing Pythonic idioms for iterating, searching, and modifying the parse tree.
endef

$(eval $(call Py3Package,python3-beautifulsoup4))
$(eval $(call BuildPackage,python3-beautifulsoup4))
$(eval $(call BuildPackage,python3-beautifulsoup4-src))
