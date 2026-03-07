include $(TOPDIR)/rules.mk

PKG_NAME:=python-spotifyaio
PKG_VERSION:=2.0.2
PKG_RELEASE:=1

PYPI_NAME:=spotifyaio
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-spotifyaio
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Asynchronous Python client for Spotify.
  URL:=https://github.com/joostlek/python-spotify
  DEPENDS:=+python3 +python3-aiohttp +python3-yarl +python3-mashumaro +python3-orjson
endef

define Package/python3-spotifyaio/description
Asynchronous Python client for Spotify.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-spotifyaio))
$(eval $(call BuildPackage,python3-spotifyaio))
$(eval $(call BuildPackage,python3-spotifyaio-src))
