include $(TOPDIR)/rules.mk

PKG_NAME:=soapy-rtl-sdr
PKG_VERSION:=0.3.3
PKG_RELEASE:=1

PKG_SOURCE:=SoapyRTLSDR-soapy-rtl-sdr-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/pothosware/SoapyRTLSDR/archive/soapy-rtl-sdr-$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DIR:=$(BUILD_DIR)/SoapyRTLSDR-soapy-rtl-sdr-$(PKG_VERSION)

CMAKE_BINARY_SUBDIR:=build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/soapy-rtl-sdr
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=SoapySDR RTL-SDR Support Module
	DEPENDS:=+librtlsdr +soapy-sdr
	URL:=https://github.com/pothosware/SoapyRTLSDR
endef

define Package/soapy-rtl-sdr/description
	Soapy SDR module for RTL-SDR
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON

define Package/soapy-rtl-sdr/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/SoapySDR $(1)/usr/lib/
endef

$(eval $(call BuildPackage,soapy-rtl-sdr))
