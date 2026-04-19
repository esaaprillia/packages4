include $(TOPDIR)/rules.mk

PKG_NAME:=python-itemadapter
PKG_VERSION:=0.13.1
PKG_RELEASE:=1

PYPI_NAME:=itemadapter
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

define Package/python3-itemadapter
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Common interface for data container classes
  URL:=https://github.com/scrapy/itemadapter
  DEPENDS:= \
	+python3
endef

define Package/python3-itemadapter/description
  The ItemAdapter class is a wrapper for data container objects, providing a common interface to handle objects of different types in an uniform manner, regardless of their underlying implementation.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-itemadapter))
$(eval $(call BuildPackage,python3-itemadapter))
$(eval $(call BuildPackage,python3-itemadapter-src))
