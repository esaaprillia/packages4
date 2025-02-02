include $(TOPDIR)/rules.mk

PKG_NAME:=wireshark
PKG_VERSION:=4.4.3
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://www.wireshark.org/download/src/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=COPYING

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/wireshark
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Network protocol analyzer
	DEPENDS:=+brotli +libcares +glib2 +libgnutls +krb5-libs +libgcrypt +libmaxminddb +libnl +libsmi +libpcap +libcap +libssh +libxml2 +liblua5.4 +liblz4 +libnghttp2 +libnghttp3 +libpcre2 +libspeexdsp +zlib +libzstd +minizip
	URL:=https://www.wireshark.org/
endef

define Package/wireshark/description
	Network traffic and protocol analyzer/sniffer - CLI tools and data files
endef

CMAKE_OPTIONS += \
	-Wno-dev \
	-DBUILD_wireshark=OFF \
	-DLEMON_C_COMPILER="$(CMAKE_HOST_C_COMPILER)"

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/wireshark \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*,cmake,wireshark} \
	  $(1)/usr/lib/
endef

define Package/wireshark/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{*.so*,wireshark} \
	  $(1)/usr/lib/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/wireshark \
	  $(1)/usr/share/
endef

$(eval $(call BuildPackage,wireshark))
