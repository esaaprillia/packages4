include $(TOPDIR)/rules.mk

PKG_NAME:=libdovi
PKG_VERSION:=3.4.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/quietvoid/dovi_tool/archive/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/dovi_tool-libdovi-$(PKG_VERSION)

PKG_BUILD_DEPENDS:=cargo-c/host
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/rust/rust-package-mod2.mk

define Package/libdovi
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=Library to read and write Dolby Vision metadata
  DEPENDS:=$(RUST_ARCH_DEPENDS) +libstdcpp
  URL:=https://github.com/quietvoid/dovi_tool
endef

define Package/libdovi/description
  The dolby_vision crate is also hosted in this repo, see README for use as a Rust/C lib.
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include 
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/{*.so*,*.a} $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/dovi.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/dovi.pc
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/dovi.pc
endef

define Build/Compile
	$(call Build/Compile/Cargo,dolby_vision)
endef

define Package/libdovi/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libdovi))
