include $(TOPDIR)/rules.mk

PKG_NAME:=bctoolbox
PKG_VERSION:=5.4.107
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://gitlab.linphone.org/BC/public/bctoolbox/-/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE.txt

CMAKE_BINARY_SUBDIR:=build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/bctoolbox
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=BcToolbox
	DEPENDS:=+libdecaf +@MBEDTLS_SSL_RENEGOTIATION +libmbedtls +libstdcpp
	URL:=https://gitlab.linphone.org/BC/public/bctoolbox
endef

define Package/bctoolbox/description
Utilities library used by Belledonne Communications softwares like belle-sip, mediastreamer2 and liblinphone.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=YES \
	-DENABLE_STRICT=NO \
	-DENABLE_TESTS_COMPONENT=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/bctoolbox*.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/bctoolbox*.pc
endef

define Package/bctoolbox/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,bctoolbox))
