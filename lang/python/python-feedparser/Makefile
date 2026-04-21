include $(TOPDIR)/rules.mk

PKG_NAME:=python-feedparser
PKG_VERSION:=6.0.12
PKG_RELEASE:=1

PYPI_NAME:=feedparser
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-feedparser
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Parse Atom and RSS feeds in Python.
  URL:=https://github.com/kurtmckee/feedparser
  DEPENDS:= \
	+python3 \
	+python3-sgmllib3k
endef

define Package/python3-feedparser/description
Universal feed parser, handles RSS 0.9x, RSS 1.0, RSS 2.0, CDF, Atom 0.3, and Atom 1.0 feeds
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-feedparser))
$(eval $(call BuildPackage,python3-feedparser))
$(eval $(call BuildPackage,python3-feedparser-src))
