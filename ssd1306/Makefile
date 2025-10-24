include $(TOPDIR)/rules.mk

PKG_NAME:=ssd1306
PKG_VERSION:=1.8.6
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/lexus2k/ssd1306/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build
#CMAKE_SOURCE_SUBDIR:= Receivers/unix

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/ssd1306
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Driver for SSD1306, SSD1331, SSD1351, IL9163, ILI9341, ST7735, PCD8544, Nokia 5110 displays running on Arduino/ESP32/Linux (Rasperry) platforms
	DEPENDS:=+libstdcpp
	URL:=https://github.com/lexus2k/ssd1306
endef

define Package/ssd1306/description
	SSD1306 driver is Arduino style C/C++ library with unicode support. The library can be compiled for plain Linux (for example, raspberry spi), or you can use it with plain avr-gcc compiler without Arduino IDE. It supports monochrome and RGB oleds and has debug mode, allowing to execute code on PC, using SDL2.0. Initially the library is intended for very small microcontrollers (with a little of RAM). It was developed to use as few resources as possible, but still has powerful capabilities (NanoEngine), allowing to develop nice animation. It works on any powerful devices like raspberry pi, esp32; and can be easily ported to new platform.
endef

define Package/ssd1306/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,ssd1306))
