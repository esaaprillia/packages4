include $(TOPDIR)/rules.mk

PKG_NAME:=libimagequant
PKG_VERSION:=4.4.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/ImageOptim/libimagequant/archive/$(PKG_VERSION)/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=COPYRIGHT

PKG_BUILD_DEPENDS:=cargo-c/host
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/rust/rust-package-mod2.mk

define Package/libimagequant
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=Palette quantization library that powers pngquant and other PNG optimizers
  DEPENDS:=$(RUST_ARCH_DEPENDS) +libstdcpp
  URL:=https://github.com/ImageOptim/libimagequant
endef

define Package/libimagequant/description
  Imagequant library converts RGBA images to palette-based 8-bit indexed images, including alpha component. It's ideal for generating tiny PNG images and nice-looking GIFs.
endef

RUST_PKG_LOCKED:=0

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include 
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/{*.so*,*.a} $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/imagequant.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/imagequant.pc
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/imagequant.pc
endef

define Build/Compile
	$(call Build/Compile/Cargo,imagequant-sys)
endef

define Package/libimagequant/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libimagequant))
