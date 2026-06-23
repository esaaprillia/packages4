include $(TOPDIR)/rules.mk

PKG_NAME:=soapy-airspy
PKG_VERSION:=0.2.0
PKG_RELEASE:=1

PKG_SOURCE:=SoapyAirspy-soapy-airspy-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/pothosware/SoapyAirspy/archive/soapy-airspy-$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DIR:=$(BUILD_DIR)/SoapyAirspy-soapy-airspy-$(PKG_VERSION)

CMAKE_BINARY_SUBDIR:=build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/soapy-airspy
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Soapy SDR plugin for the Airspy
	DEPENDS:=+airspy +soapy-sdr
	URL:=https://github.com/pothosware/SoapyAirspy
endef

define Package/soapy-airspy/description
	Soapy SDR plugin for Airspy
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON

define Package/soapy-airspy/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/SoapySDR $(1)/usr/lib/
endef

$(eval $(call BuildPackage,soapy-airspy))
