include $(TOPDIR)/rules.mk

PKG_NAME:=python-voip-utils
PKG_VERSION:=0.3.0
PKG_RELEASE:=1

PYPI_NAME:=voip_utils
PKG_HASH:=510f9d6c83db0ad2013deb30787962497f3cfa23d8b34c5c644781cf0717eefb

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-voip-utils
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Voice over IP Utilities
  URL:=https://github.com/home-assistant-libs/voip-utils
  DEPENDS:=+python3-asyncio +python3-logging +python3-opuslib
endef

define Package/python3-voip-utils/description
  Voice over IP utilities for the voip integration.
endef

$(eval $(call Py3Package,python3-voip-utils))
$(eval $(call BuildPackage,python3-voip-utils))
$(eval $(call BuildPackage,python3-voip-utils-src))
