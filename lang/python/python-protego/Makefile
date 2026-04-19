include $(TOPDIR)/rules.mk

PKG_NAME:=python-protego
PKG_VERSION:=0.6.0
PKG_RELEASE:=1

PYPI_NAME:=protego
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

define Package/python3-protego
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Pure-Python robots.txt parser with support for modern conventions
  URL:=https://github.com/scrapy/protego
  DEPENDS:= \
	+python3
endef

define Package/python3-protego/description
  This is a Python library of web-related functions
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-protego))
$(eval $(call BuildPackage,python3-protego))
$(eval $(call BuildPackage,python3-protego-src))
