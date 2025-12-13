include $(TOPDIR)/rules.mk

PKG_NAME:=python-music-assistant
PKG_VERSION:=2.6.0
PKG_RELEASE:=1

PYPI_NAME:=music_assistant
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-music-assistant
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Music Assistant
  URL:=https://github.com/music-assistant/server
  DEPENDS:= \
	+python3-light
endef

define Package/python3-music-assistant/description
Music Assistant is a free, opensource Media library manager that connects to your streaming services and a wide range of connected speakers.
endef

define Py3Package/python3-music-assistant/filespec
+|$(PYTHON3_PKG_DIR)
-|$(PYTHON3_PKG_DIR)/music_assistant/providers/airplay/bin/cliraop-linux-aarch64
-|$(PYTHON3_PKG_DIR)/music_assistant/providers/airplay/bin/cliraop-linux-x86_64
-|$(PYTHON3_PKG_DIR)/music_assistant/providers/airplay/bin/cliraop-macos-arm64
-|$(PYTHON3_PKG_DIR)/music_assistant/providers/spotify/bin/librespot-linux-aarch64
-|$(PYTHON3_PKG_DIR)/music_assistant/providers/spotify/bin/librespot-linux-x86_64
-|$(PYTHON3_PKG_DIR)/music_assistant/providers/spotify/bin/librespot-macos-arm64
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-music-assistant))
$(eval $(call BuildPackage,python3-music-assistant))
$(eval $(call BuildPackage,python3-music-assistant-src))
