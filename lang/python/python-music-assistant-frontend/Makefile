include $(TOPDIR)/rules.mk

PKG_NAME:=python-music-assistant-frontend
PKG_VERSION:=2.17.40
PKG_RELEASE:=1

PYPI_NAME:=music_assistant_frontend
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-music-assistant-frontend
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The Music Assistant frontend
  URL:=https://github.com/music-assistant/frontend
  DEPENDS:=+python3
endef

define Package/python3-music-assistant-frontend/description
The Music Assistant frontend/panel is developed in Vue, development instructions below.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-music-assistant-frontend))
$(eval $(call BuildPackage,python3-music-assistant-frontend))
$(eval $(call BuildPackage,python3-music-assistant-frontend-src))
