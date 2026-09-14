include $(TOPDIR)/rules.mk

PKG_NAME:=python-bs4
PKG_VERSION:=0.0.2
PKG_RELEASE:=1

PYPI_NAME:=bs4
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-bs4
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Dummy package for Beautiful Soup (beautifulsoup4)
  URL:=https://pypi.org/project/bs4/
  DEPENDS:=+python3 +python3-beautifulsoup4
endef

define Package/python3-bs4/description
  This is a dummy package designed to prevent namesquatting on PyPI. You should install beautifulsoup4 instead.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-bs4))
$(eval $(call BuildPackage,python3-bs4))
$(eval $(call BuildPackage,python3-bs4-src))
