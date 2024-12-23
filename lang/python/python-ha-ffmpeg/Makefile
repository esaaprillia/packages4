include $(TOPDIR)/rules.mk

PKG_NAME:=python-ha-ffmpeg
PKG_VERSION:=3.2.2
PKG_RELEASE:=1

PYPI_NAME:=ha_ffmpeg
PKG_HASH:=80e4a77b3eda73df456ec9cc3295a898ed7cbb8cd2d59798f10e8c10a8e6c401

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-ha-ffmpeg
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A library that handling with ffmpeg for home-assistant
  URL:=https://github.com/home-assistant-libs/ha-ffmpeg
  DEPENDS:=+python3-light +python3-async-timeout +ffmpeg +libffmpeg-full
endef

define Package/python3-ha-ffmpeg/description
A Python library to control ffmepg from asyncio for [Home Assistant](https://www.home-assistant.io).
• Emulate webcam from any video input source for HA
• Analyse a video/audio stream for noise or motion detection
• Grab image from a stream
Take care to protect function calls to this library with asyncio.shield.
endef

$(eval $(call Py3Package,python3-ha-ffmpeg))
$(eval $(call BuildPackage,python3-ha-ffmpeg))
$(eval $(call BuildPackage,python3-ha-ffmpeg-src))
