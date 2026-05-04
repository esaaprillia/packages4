include $(TOPDIR)/rules.mk

PKG_NAME:=srsran
PKG_VERSION:=25.10.0
PKG_SOURCE_VERSION:=25_10
PKG_RELEASE:=1

PKG_SOURCE:=release_$(PKG_SOURCE_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/srsran/srsRAN_4G/archive/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=AGPL-3.0
PKG_LICENSE_FILES:=COPYRIGHT

PKG_BUILD_DIR:=$(BUILD_DIR)/srsRAN_4G-release_$(PKG_SOURCE_VERSION)
PKG_BUILD_DEPENDS:=fftw3 mbedtls pcsc-lite libconfig lksctp-tools uhd bladerf soapy-sdr zmq boost rapidjson backward-cpp libexecinfo

CMAKE_BINARY_SUBDIR:=build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/srsran
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Open source SDR 4G software suite from Software Radio Systems (SRS)
	DEPENDS:=+libstdcpp +libpthread +fftw3f +libmbedtls +libpcsclite +libconfig +libsctp +uhd +bladerf +libdw +soapy-sdr +libzmq-nc +boost-program_options +libexecinfo
	URL:=https://github.com/srsran/srsRAN_4G
endef

define Package/srsran/description
	srsRAN is an open source 4G software radio suite developed by SRS. For 5G RAN, see our new O-RAN CU/DU solution - srsRAN Project.
endef

define Build/Prepare
	$(call Build/Prepare/Default)
	$(SED) 's,/usr/lib64,$(STAGING_DIR)/usr/lib,g' $(PKG_BUILD_DIR)/CMakeLists.txt
endef

TARGET_LDFLAGS +=-lpthread

CMAKE_OPTIONS += \
	-DENABLE_GUI=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/srsran/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/* $(1)/usr/share/
endef

$(eval $(call BuildPackage,srsran))
