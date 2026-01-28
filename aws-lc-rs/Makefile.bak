include $(TOPDIR)/rules.mk

PKG_NAME:=python-voip-utils
PKG_VERSION:=0.3.5
PKG_RELEASE:=1

PYPI_NAME:=voip_utils
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-voip-utils
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Voice over IP Utilities
  URL:=https://github.com/home-assistant-libs/voip-utils
  DEPENDS:=+python3 +python3-opuslib
endef

define Package/python3-voip-utils/description
Voice over IP utilities for the voip integration.
endef

$(eval $(call Py3Package,python3-voip-utils))
$(eval $(call BuildPackage,python3-voip-utils))
$(eval $(call BuildPackage,python3-voip-utils-src))
