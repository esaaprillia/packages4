include $(TOPDIR)/rules.mk

PKG_NAME:=python-narwhals
PKG_VERSION:=2.22.1
PKG_RELEASE:=1

PYPI_NAME:=narwhals
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-narwhals
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Lightweight and extensible compatibility layer between dataframe libraries
  URL:=https://github.com/narwhals-dev/narwhals
  DEPENDS:=+python3
endef

define Package/python3-narwhals/description
  Lightweight and extensible compatibility layer between dataframe libraries
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-narwhals))
$(eval $(call BuildPackage,python3-narwhals))
$(eval $(call BuildPackage,python3-narwhals-src))
