include $(TOPDIR)/rules.mk

PKG_NAME:=python-go2rtc-client
PKG_VERSION:=0.1.2
PKG_RELEASE:=1

PYPI_NAME:=go2rtc_client
PKG_HASH:=07cb27bb0252749effe43dbb791caea8ec12df97fee6cff5501544fe163e52cd

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-go2rtc-client
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python client for go2rtc
  URL:=https://github.com/home-assistant-libs/python-go2rtc-client
  DEPENDS:=+python3 +python3-aiohttp +python3-awesomeversion +python3-mashumaro +python3-orjson +python3-webrtc-models
endef

define Package/python3-go2rtc-client/description
Asynchronous Python client for go2rtc.
endef

$(eval $(call Py3Package,python3-go2rtc-client))
$(eval $(call BuildPackage,python3-go2rtc-client))
$(eval $(call BuildPackage,python3-go2rtc-client-src))
