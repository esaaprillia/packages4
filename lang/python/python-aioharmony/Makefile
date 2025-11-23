include $(TOPDIR)/rules.mk

PKG_NAME:=python-aioharmony
PKG_VERSION:=0.5.3
PKG_RELEASE:=1

PYPI_NAME:=aioharmony
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-aioharmony
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=asyncio Python library for connecting to and controlling the Logitech Harmony
  URL:=https://github.com/Harmony-Libs/aioharmony
  DEPENDS:=+python3 +python3-aiohttp +python3-async-timeout +python3-slixmpp
endef

define Package/python3-aioharmony/description
Python library for programmatically using a Logitech Harmony Link or Ultimate Hub.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-aioharmony))
$(eval $(call BuildPackage,python3-aioharmony))
$(eval $(call BuildPackage,python3-aioharmony-src))
