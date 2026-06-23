include $(TOPDIR)/rules.mk

PKG_NAME:=airspy
PKG_VERSION:=1.0.10
PKG_RELEASE:=1

PKG_SOURCE:=airspyone_host-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/airspy/airspyone_host/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0-or-later
PKG_LICENSE_FILES:=

PKG_BUILD_DIR:=$(BUILD_DIR)/airspyone_host-$(PKG_VERSION)

CMAKE_BINARY_SUBDIR:=build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/airspy
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=AirSpy's usemode driver and associated tools
	DEPENDS:=+libusb-1.0
	URL:=https://github.com/pothosware/SoapyAirspy
endef

define Package/airspy/description
	A tiny and efficient software defined radio.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libairspy.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libairspy.pc
endef

define Package/airspy/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,airspy))
