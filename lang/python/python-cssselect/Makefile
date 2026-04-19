include $(TOPDIR)/rules.mk

PKG_NAME:=python-cssselect
PKG_VERSION:=1.4.0
PKG_RELEASE:=1

PYPI_NAME:=cssselect
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

define Package/python3-cssselect
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=cssselect parses CSS3 Selectors and translates them to XPath 1.0
  URL:=https://github.com/scrapy/cssselect
  DEPENDS:= \
	+python3
endef

define Package/python3-cssselect/description
  cssselect is a BSD-licensed Python library to parse CSS3 selectors and translate them to XPath 1.0 expressions.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-cssselect))
$(eval $(call BuildPackage,python3-cssselect))
$(eval $(call BuildPackage,python3-cssselect-src))
