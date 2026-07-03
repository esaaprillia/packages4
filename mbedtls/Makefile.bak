#
# Copyright (C) 2011-2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=mbedtls
PKG_VERSION:=3.6.6
PKG_RELEASE:=2
PKG_BUILD_FLAGS:=no-mips16 gc-sections no-lto

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL=https://github.com/Mbed-TLS/$(PKG_NAME)/releases/download/$(PKG_NAME)-$(PKG_VERSION)
PKG_HASH:=8fb65fae8dcae5840f793c0a334860a411f884cc537ea290ce1c52bb64ca007a

PKG_LICENSE:=GPL-2.0-or-later
PKG_LICENSE_FILES:=LICENSE
PKG_CPE_ID:=cpe:/a:arm:mbed_tls

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/mbedtls/Default
  TITLE:=Embedded SSL
  URL:=https://www.trustedfirmware.org/projects/mbed-tls/
endef

define Package/mbedtls/Default/description
The aim of the mbedtls project is to provide a quality, open-source
cryptographic library written in C and targeted at embedded systems.
endef

define Package/libmbedtls
$(call Package/mbedtls/Default)
  SECTION:=libs
  CATEGORY:=Libraries
  SUBMENU:=SSL
  TITLE+= (library)
  ABI_VERSION:=21
  MENU:=1
endef

define Package/mbedtls-util
$(call Package/mbedtls/Default)
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE+= (utilities)
  DEPENDS:=+libmbedtls
endef

define Package/libmbedtls/description
$(call Package/mbedtls/Default/description)
This package contains the mbedtls library.
endef

define Package/mbedtls-util/description
$(call Package/mbedtls/Default/description)
This package contains mbedtls helper programs for private key and
CSR generation (gen_key, cert_req)
endef

CMAKE_OPTIONS += \
	-DCMAKE_POSITION_INDEPENDENT_CODE=ON \
	-DUSE_SHARED_MBEDTLS_LIBRARY:Bool=ON \
	-DENABLE_TESTING:Bool=OFF \
	-DENABLE_PROGRAMS:Bool=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/mbedcrypto.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/mbedcrypto.pc
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/mbedtls.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/mbedtls.pc
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/mbedx509.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/mbedx509.pc
endef

define Package/libmbedtls/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/lib*.so.* $(1)/usr/lib/
endef

define Package/mbedtls-util/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/gen_key $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/cert_req $(1)/usr/bin/
endef

$(eval $(call BuildPackage,libmbedtls))
$(eval $(call BuildPackage,mbedtls-util))
