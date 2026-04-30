include $(TOPDIR)/rules.mk

PKG_NAME:=soapy-sdr
PKG_VERSION:=0.8.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/pothosware/SoapySDR/archive/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSL-1.0
PKG_LICENSE_FILES:=LICENSE_1_0.txt

PKG_BUILD_DIR:=$(BUILD_DIR)/SoapySDR-soapy-sdr-$(PKG_VERSION)
CMAKE_BINARY_SUBDIR:=build

PKG_BUILD_DEPENDS:=swig/host
PYTHON3_PKG_BUILD:=0

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

define Package/soapy-sdr
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Vendor and platform neutral SDR support library.
	DEPENDS:=+libstdcpp +python3
	URL:=https://github.com/pothosware/SoapySDR
endef

define Package/soapy-sdr/description
	Soapy SDR - vendor and platform neutral SDR support library.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DSOAPY_SDR_EXTVER=g60c8b577 \
	-DPYTHON_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/$(PYTHON3)"

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/SoapySDR.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/SoapySDR.pc
endef

define Package/soapy-sdr/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)$(PYTHON3_PKG_DIR)
	$(CP) $(PKG_INSTALL_DIR)$(PYTHON3_PKG_DIR)/* $(1)$(PYTHON3_PKG_DIR)
endef

$(eval $(call BuildPackage,soapy-sdr))
