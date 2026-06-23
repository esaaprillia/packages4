include $(TOPDIR)/rules.mk

PKG_NAME:=soapy-hackrf
PKG_VERSION:=0.3.4
PKG_RELEASE:=1

PKG_SOURCE:=SoapyHackRF-soapy-hackrf-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/pothosware/SoapyHackRF/archive/soapy-hackrf-$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/SoapyHackRF-soapy-hackrf-$(PKG_VERSION)

CMAKE_BINARY_SUBDIR:=build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/soapy-hackrf
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=SoapySDR HackRF module
	DEPENDS:=+hackrf +soapy-sdr
	URL:=https://github.com/pothosware/SoapyHackRF
endef

define Package/soapy-hackrf/description
	Soapy SDR module for Hack RF
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON

define Package/soapy-hackrf/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/SoapySDR $(1)/usr/lib/
endef

$(eval $(call BuildPackage,soapy-hackrf))
