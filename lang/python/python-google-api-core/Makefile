include $(TOPDIR)/rules.mk

PKG_NAME:=python-google-api-core
PKG_VERSION:=2.24.0
PKG_RELEASE:=1

PYPI_NAME:=google_api_core
PKG_HASH:=e255640547a597a4da010876d333208ddac417d60add22b6851a0c66a831fcaf

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-google-api-core
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Google API client core library
  URL:=https://github.com/googleapis/python-api-core
  DEPENDS:=+python3
endef

define Package/python3-google-api-core/description
This library is not meant to stand-alone. Instead it defines common helpers used by all Google API clients. For more information, see the documentation.
endef

$(eval $(call Py3Package,python3-google-api-core))
$(eval $(call BuildPackage,python3-google-api-core))
$(eval $(call BuildPackage,python3-google-api-core-src))
$(eval $(call HostBuild))
