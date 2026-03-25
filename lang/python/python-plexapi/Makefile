include $(TOPDIR)/rules.mk

PKG_NAME:=python-plexapi
PKG_VERSION:=4.18.1
PKG_RELEASE:=1

PYPI_NAME:=plexapi
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-plexapi
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python bindings for the Plex API.
  URL:=https://python-plexapi.readthedocs.io/
  DEPENDS:=+python3 +python3-requests
endef

define Package/python3-plexapi/description
Unofficial Python bindings for the Plex API. Our goal is to match all capabilities of the official Plex Web Client.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-plexapi))
$(eval $(call BuildPackage,python3-plexapi))
$(eval $(call BuildPackage,python3-plexapi-src))
