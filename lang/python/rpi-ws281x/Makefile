include $(TOPDIR)/rules.mk

PKG_NAME:=rpi-ws281x
PKG_VERSION:=5.0.0
PKG_RELEASE:=1

PYPI_NAME:=rpi_ws281x
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-rpi-ws281x
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Userspace Raspberry Pi PWM/PCM/SPI library for SK6812 and WS281X LEDs.
  URL:=https://github.com/rpi-ws281x/rpi-ws281x-python/
  DEPENDS:=+python3-light
endef

define Package/python3-rpi-ws281x/description
Userspace Raspberry Pi library for controlling WS281X LEDs. This includes WS2812 and SK6812RGB RGB LEDs Preliminary support is now included for SK6812RGBW LEDs (yes, RGB + W) The LEDs can be controlled by either the PWM (2 independent channels) or PCM controller (1 channel) or the SPI interface (1 channel).
endef

$(eval $(call Py3Package,python3-rpi-ws281x))
$(eval $(call BuildPackage,python3-rpi-ws281x))
$(eval $(call BuildPackage,python3-rpi-ws281x-src))
