include $(TOPDIR)/rules.mk

PKG_NAME:=rav1e
PKG_VERSION:=0.8.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/xiph/rav1e/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=cargo-c/host
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/rust/rust-package-mod.mk

define Package/rav1e
  SECTION:=sound
  CATEGORY:=Sound
  TITLE:=The fastest and safest AV1 encoder.
  DEPENDS:=$(RUST_ARCH_DEPENDS) +libstdcpp +zlib
  URL:=https://github.com/xiph/rav1e/
endef

define Package/rav1e/description
  rav1e is an AV1 video encoder. It is designed to eventually cover all use cases, though in its current form it is most suitable for cases where libaom (the reference encoder) is too slow.
endef

export LIBZ_SYS_STATIC=1
CARGO_PKG_VARS += LIBZ_SYS_STATIC=1

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include 
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/{*.so*,*.a} $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/rav1e.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/rav1e.pc
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/rav1e.pc
endef

define Package/rav1e/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call RustBinPackage,rav1e))
$(eval $(call BuildPackage,rav1e))
