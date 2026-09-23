include $(TOPDIR)/rules.mk

PKG_NAME:=python-firecrawl-py
PKG_VERSION:=4.44.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=AGPL-3.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:= firecrawl_py
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-firecrawl-py
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python SDK for the Firecrawl API: web scraping, crawling, web search, and scientific literature search over a research paper index of PubMed, bioRxiv, medRxiv and arXiv abstracts
  URL:=https://github.com/firecrawl/firecrawl
  DEPENDS:= \
	+python3 \
	+python3-requests \
	+python3-httpx \
	+python3-dotenv \
	+python3-websockets \
	+python3-nest-asyncio \
	+python3-pydantic \
	+python3-aiohttp
endef

define Package/python3-firecrawl-py/description
The Firecrawl Python SDK is a library that lets you easily search, scrape, and interact with the web for AI agents — returning clean Markdown or structured data your agents can ship with. It provides a simple and intuitive interface for the Firecrawl API.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-firecrawl-py))
$(eval $(call BuildPackage,python3-firecrawl-py))
$(eval $(call BuildPackage,python3-firecrawl-py-src))
