include $(TOPDIR)/rules.mk

PKG_NAME:=luma-led-matrix
PKG_VERSION:=1.9.0
PKG_RELEASE:=1

PYPI_NAME:=luma_led_matrix
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.rst

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-luma-led-matrix
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A library to drive a MAX7219 LED serializer (using SPI) and WS2812 NeoPixels (using DMA)
  URL:=https://luma-led-matrix.readthedocs.io/
  DEPENDS:=+python3 +python3-luma-core +python3-rpi-ws281x
endef

define Package/python3-luma-led-matrix/description
  Python 3 library interfacing LED matrix displays with the MAX7219 driver (using SPI), WS2812 (NeoPixels, inc Pimoroni Unicorn pHat/Hat and Unicorn Hat HD) and APA102 (DotStar) on the Raspberry Pi and other Linux-based single board computers - it provides a Pillow-compatible drawing canvas, and other functionality to support
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-luma-led-matrix))
$(eval $(call BuildPackage,python3-luma-led-matrix))
$(eval $(call BuildPackage,python3-luma-led-matrix-src))
