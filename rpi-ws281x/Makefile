include $(TOPDIR)/rules.mk

PKG_NAME:=rpi-ws281x
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PKG_SOURCE:=rpi_ws281x-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/jgarff/rpi_ws281x/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:= BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/rpi_ws281x-$(PKG_VERSION)

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/rpi-ws281x
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Userspace Raspberry Pi PWM library for WS281X LEDs
	DEPENDS:=+libstdcpp
	URL:=https://github.com/jgarff/rpi_ws281x
endef

define Package/rpi-ws281x/description
	Userspace Raspberry Pi library for controlling WS281X LEDs. This includes WS2812 and SK6812RGB RGB LEDs Preliminary support is now included for SK6812RGBW LEDs (yes, RGB + W) The LEDs can be controlled by either the PWM (2 independent channels) or PCM controller (1 channel) or the SPI interface (1 channel).
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libws2811.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libws2811.pc
endef

define Package/rpi-ws281x/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,rpi-ws281x))
$(eval $(call HostBuild))
