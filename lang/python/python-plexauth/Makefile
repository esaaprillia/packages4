include $(TOPDIR)/rules.mk

PKG_NAME:=python-plexauth
PKG_VERSION:=0.0.6
PKG_RELEASE:=1

PYPI_NAME:=plexauth
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-plexauth
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Handles the authorization flow to obtain tokens from Plex.tv via external redirection.
  URL:=https://github.com/jjlawren/python-plexauth/
  DEPENDS:=+python3 +python3-aiohttp
endef

define Package/python3-plexauth/description
Handles the authorization flow to obtain tokens from Plex.tv via external redirection.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-plexauth))
$(eval $(call BuildPackage,python3-plexauth))
$(eval $(call BuildPackage,python3-plexauth-src))
