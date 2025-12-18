include $(TOPDIR)/rules.mk

PKG_NAME:=python-music-assistant
PKG_VERSION:=2.7.0
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
	+python3-light \
	+python3-aiodns \
	+python3-pycares \
	+python3-aiohttp-asyncmdnsresolver \
	+python3-brotli \
	+python3-aiohttp \
	+python3-aiohttp-fast-zlib \
	+python3-aiofiles \
	+python3-aiorun \
	+python3-aiosqlite \
	+python3-awesomeversion \
	+python3-certifi \
	+python3-colorlog \
	+python3-cryptography \
	+python3-chardet \
	+python3-ifaddr \
	+python3-get-mac \
	+python3-mashumaro \
	+python3-music-assistant-frontend \
	+python3-music-assistant-models \
	+python3-mutagen \
	+python3-orjson \
	+python3-pillow \
	+python3-podcastparser \
	+python3-propcache \
	+python3-python-slugify \
	+python3-unidecode \
	+python3-xmltodict \
	+python3-shortuuid \
	+python3-zeroconf \
	+python3-uv \
	+python3-librosa \
	+python3-gql \
	+python3-aiovban \
	+python3-aiortc
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
