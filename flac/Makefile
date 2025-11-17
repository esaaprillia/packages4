include $(TOPDIR)/rules.mk

PKG_NAME:=flac
PKG_VERSION:=1.5.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://ftp.osuosl.org/pub/xiph/releases/flac/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GFDL-1.3 GPL-2.0 LGPL-2.1 BSD-3-Clause
PKG_LICENSE_FILES:=COPYING.FDL COPYING.GPL COPYING.LGPL COPYING.Xiph

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/nls.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/flac
	SECTION:=net
	CATEGORY:=Network
	TITLE:=Free Lossless Audio Codec
	DEPENDS:=+libstdcpp +libogg $(ICONV_DEPENDS)
	URL:=https://xiph.org/flac/
endef

define Package/flac/description
	FLAC is open source software that can reduce the amount of storage space needed to store digital audio signals without needing to remove information in doing so.
endef

CMAKE_OPTIONS += \
	-DBUILD_TESTING=OFF \
	-DBUILD_EXAMPLES=OFF \
	-DBUILD_SHARED_LIBS=ON \
	-DNDEBUG=ON \
	-DWITH_FORTIFY_SOURCE=OFF \
	-DWITH_STACK_PROTECTOR=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/flac*.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/flac*.pc
endef

define Package/flac/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,flac))
