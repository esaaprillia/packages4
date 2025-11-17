include $(TOPDIR)/rules.mk

PKG_NAME:=libogg
PKG_VERSION:=1.3.6
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://ftp.osuosl.org/pub/xiph/releases/ogg/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=COPYING

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/libogg
	SECTION:=net
	CATEGORY:=Network
	TITLE:=Reference implementation of the Ogg media container
	DEPENDS:=
	URL:=https://xiph.org/ogg/
endef

define Package/libogg/description
	Ogg project codecs use the Ogg bitstream format to arrange the raw, compressed bitstream into a more robust, useful form. For example, the Ogg bitstream makes seeking, time stamping and error recovery possible, as well as mixing several separate, concurrent media streams into a single physical bitstream.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/ogg.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/ogg.pc
endef

define Package/libogg/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libogg))
