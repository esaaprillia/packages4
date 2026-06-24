include $(TOPDIR)/rules.mk

PKG_NAME:=python-homeassistant
PKG_VERSION:=2026.6.4
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

PYPI_NAME:=homeassistant
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-homeassistant
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Open-source home automation platform running on Python 3.
  URL:=https://www.home-assistant.io/
  DEPENDS:= \
	+python3 \
	+python3-radios \
	+python3-pymetno \
	+python3-text-to-speech \
	+python3-restrictedpython \
	+python3-pyotp \
	+python3-pyqrcode \
	+python3-aiodhcpwatcher \
	+python3-aiodiscover \
	+python3-aiodns \
	+python3-aiogithubapi \
	+python3-aiohttp-asyncmdnsresolver \
	+python3-aiohttp-fast-zlib \
	+python3-aiohttp \
	+python3-aiohttp-cors \
	+python3-aiousbwatcher \
	+python3-aiozoneinfo \
	+python3-annotatedyaml \
	+python3-astral \
	+python3-async-interrupt \
	+python3-async-upnp-client \
	+python3-atomicwrites-homeassistant \
	+python3-attrs \
	+python3-audioop-lts \
	+python3-av \
	+python3-awesomeversion \
	+python3-bcrypt \
	+python3-bleak-retry-connector \
	+python3-bleak \
	+python3-bluetooth-adapters \
	+python3-bluetooth-auto-recovery \
	+python3-bluetooth-data-tools \
	+python3-cached-ipaddress \
	+python3-certifi \
	+python3-ciso8601 \
	+python3-cronsim \
	+python3-cryptography \
	+python3-dbus-fast \
	+python3-file-read-backwards \
	+python3-fnv-hash-fast \
	+python3-go2rtc-client \
	+python3-ha-ffmpeg \
	+python3-habluetooth \
	+python3-hass-nabucasa \
	+python3-hassil \
	+python3-home-assistant-bluetooth \
	+python3-home-assistant-frontend \
	+python3-home-assistant-intents \
	+python3-httpx \
	+python3-ifaddr \
	+python3-jinja2 \
	+python3-lru-dict \
	+python3-mutagen \
	+python3-openai \
	+python3-orjson \
	+python3-packaging \
	+python3-paho-mqtt \
	+python3-pillow \
	+python3-propcache \
	+python3-psutil-home-assistant \
	+python3-pyjwt \
	+python3-pymicro-vad \
	+python3-pynacl \
	+python3-pyopenssl \
	+python3-serialx \
	+python3-pyspeex-noise \
	+python3-slugify \
	+python3-pyturbojpeg \
	+python3-yaml \
	+python3-requests \
	+python3-securetar \
	+python3-sqlalchemy \
	+python3-standard-aifc \
	+python3-standard-telnetlib \
	+python3-typing-extensions \
	+python3-ulid-transform \
	+python3-urllib3 \
	+python3-uv \
	+python3-voluptuous-openapi \
	+python3-voluptuous-serialize \
	+python3-voluptuous \
	+python3-webrtc-models \
	+python3-yarl \
	+python3-zeroconf
endef

define Package/python3-homeassistant/description
Open source home automation that puts local control and privacy first. Powered by a worldwide community of tinkerers and DIY enthusiasts. Perfect to run on a Raspberry Pi or a local server.
endef

define Package/python3-homeassistant/conffiles
/etc/homeassistant/
endef

define Py3Package/python3-homeassistant/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/hass $(1)/usr/bin/hass
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/hass.init $(1)/etc/init.d/hass
endef

$(eval $(call Py3Package,python3-homeassistant))
$(eval $(call BuildPackage,python3-homeassistant))
$(eval $(call BuildPackage,python3-homeassistant-src))
