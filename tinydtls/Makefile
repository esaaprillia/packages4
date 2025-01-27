include $(TOPDIR)/rules.mk

PKG_NAME:=tinydtls
PKG_VERSION:=0.8.6
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/eclipse-tinydtls/tinydtls.git
PKG_SOURCE_VERSION:=8a9e0481201ec9fe0e0b2e526595aa6e510d98ad
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk

define Package/tinydtls
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Eclipse tinydtls
	DEPENDS:=
	URL:=https://github.com/eclipse-tinydtls/tinydtls
endef

define Package/tinydtls/description
tinydtls is a library for Datagram Transport Layer Security (DTLS 1.2 RFC 6347) covering both the client and the server state machine. It is implemented in C and provides support for a minimal set of cipher suites suitable for the Internet of Things.
This library contains functions and structures that can help constructing a single-threaded UDP server with DTLS support in C99. The following components are available:
• dtls Basic support for DTLS with pre-shared key mode and RPK mode with ECC.
• tests The subdirectory tests contains test programs that show how each component is used.
endef

define Build/Configure
	(cd $(PKG_BUILD_DIR); ./autogen.sh );
	$(call Build/Configure/Default)
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) \
		LDFLAGS="$(TARGET_LDFLAGS)" \
		CFLAGS="$(TARGET_CFLAGS) $(TARGET_CPPFLAGS)" \
		CC="$(TARGET_CC)"
endef

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/* \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/tinydtls/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,tinydtls))
