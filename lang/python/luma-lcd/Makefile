include $(TOPDIR)/rules.mk

PKG_NAME:=luma-lcd
PKG_VERSION:=2.13.0
PKG_RELEASE:=1

PYPI_NAME:=luma_lcd
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.rst

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-luma-lcd
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A library to drive PCD8544, HD44780, HT1621, ST7735, ST7789, ST7567, UC1701X and ILI9341-based LCD displays
  URL:=https://luma-lcd.readthedocs.io/
  DEPENDS:=+python3 +python3-luma-core
endef

define Package/python3-luma-lcd/description
  luma.lcd provides a Python 3 interface to small LCD displays connected to Raspberry Pi and other Linux-based single-board computers (SBC). It provides a Pillow-compatible drawing canvas, and other functionality to support
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-luma-lcd))
$(eval $(call BuildPackage,python3-luma-lcd))
$(eval $(call BuildPackage,python3-luma-lcd-src))
