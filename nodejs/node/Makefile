include $(TOPDIR)/rules.mk

PKG_NAME:=ocudu
PKG_VERSION:=26.04
PKG_SOURCE_VERSION:=26_04
PKG_RELEASE:=1

PKG_SOURCE:=ocudu-release_$(PKG_SOURCE_VERSION).tar.gz
PKG_SOURCE_URL:=https://gitlab.com/ocudu/ocudu/-/archive/release_$(PKG_SOURCE_VERSION)/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD 3-Clause-Open-MPI
PKG_LICENSE_FILES:=COPYRIGHT.txt LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/ocudu-release_$(PKG_SOURCE_VERSION)
#PKG_BUILD_DEPENDS:=fftw3 mbedtls pcsc-lite libconfig lksctp-tools uhd bladerf soapy-sdr zmq boost rapidjson backward-cpp libexecinfo libyaml-cpp

CMAKE_BINARY_SUBDIR:=build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/ocudu
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=OCUDU is a permissively-licensed, open-source 5G
	#DEPENDS:=+libstdcpp +libpthread +fftw3f +libmbedtls +libpcsclite +libconfig +libsctp +uhd +bladerf +libdw +soapy-sdr +libzmq-nc +boost-program_options +libexecinfo
	URL:=https://ocudu.org/
endef

define Package/ocudu/description
	OCUDU is a permissively-licensed, open-source 5G (and beyond) CU/DU project designed for commercial deployment and broad industry adoption, as well as advanced research and development.
endef

#TARGET_LDFLAGS +=-lpthread

CMAKE_OPTIONS += \
	-DBUILD_TESTING=OFF \
	-DHAVE_ARM_CRYPTO=1 \
	-DHAVE_PLUS_CRYPTO=1

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/ocudu/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/* $(1)/usr/share/
endef

$(eval $(call BuildPackage,ocudu))
