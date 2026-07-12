include $(TOPDIR)/rules.mk

PKG_NAME:=libvpx
PKG_VERSION:=1.16.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/webmproject/libvpx/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libvpx
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=VP8/VP9 Codec SDK
	DEPENDS:=
	URL:=http://www.webmproject.org/
endef

define Package/libvpx/description
Library for the vp8/vp9 codecs
endef

CONFIGURE_ARGS = \
	--target=generic-gnu \
	--prefix=/usr \
	--disable-install-docs \
	--disable-install-srcs \
	--disable-unit-tests \
	--enable-pic \
	--enable-postproc \
	--enable-runtime-cpu-detect \
	--enable-shared \
	--enable-vp8 \
	--enable-vp9 \
	--enable-vp9-highbitdepth \
	--enable-vp9-temporal-denoising

CONFIGURE_VARS += LD="$(TARGET_CC)"

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/vpx.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/vpx.pc
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/vpx.pc
endef

define Package/libvpx/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libvpx))
