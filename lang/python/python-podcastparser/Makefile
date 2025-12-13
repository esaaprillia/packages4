include $(TOPDIR)/rules.mk

PKG_NAME:=python-podcastparser
PKG_VERSION:=0.6.11
PKG_RELEASE:=1

PYPI_NAME:=podcastparser
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=ICS
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-podcastparser
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Simple, fast and efficient podcast parser
  URL:=http://gpodder.org/podcastparser/
  DEPENDS:=+python3
endef

define Package/python3-podcastparser/description
The podcast parser project is a library from the gPodder project to provide an easy and reliable way of parsing RSS- and Atom-based podcast feeds in Python.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-podcastparser))
$(eval $(call BuildPackage,python3-podcastparser))
$(eval $(call BuildPackage,python3-podcastparser-src))
