include $(TOPDIR)/rules.mk

PKG_NAME:=luma-oled
PKG_VERSION:=3.15.0
PKG_RELEASE:=1

PYPI_NAME:=luma_oled
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.rst

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-luma-oled
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python module to drive a SSD1306 / SSD1309 / SSD1322 / SSD1325 / SSD1327 / SSD1331 / SSD1351 / SH1106 OLED
  URL:=https://luma-oled.readthedocs.io/
  DEPENDS:=+python3 +python3-luma-core
endef

define Package/python3-luma-oled/description
  Python 3 library interfacing OLED matrix displays with the SSD1306, SSD1309, SSD1322, SSD1325, SSD1327, SSD1331, SSD1351, SH1106, SH1107 or WS0010 driver using I2C/SPI/Parallel on the Raspberry Pi and other linux-based single-board computers - it provides a Pillow-compatible drawing canvas, and other functionality to support
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-luma-oled))
$(eval $(call BuildPackage,python3-luma-oled))
$(eval $(call BuildPackage,python3-luma-oled-src))
