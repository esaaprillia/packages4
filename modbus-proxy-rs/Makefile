include $(TOPDIR)/rules.mk

PKG_NAME:=modbus-proxy-rs
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/tiagocoutinho/modbus-proxy-rs/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=

PKG_BUILD_DEPENDS:=rust/host
PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0
PKG_BUILD_FLAGS:=no-mips16

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/rust/rust-package.mk

define Package/modbus-proxy-rs
  SECTION:=sound
  CATEGORY:=Sound
  TITLE:=Modbus TCP proxy
  DEPENDS:=$(RUST_ARCH_DEPENDS) +libstdcpp
  URL:=https://github.com/tiagocoutinho/modbus-proxy-rs
endef

define Package/modbus-proxy-rs/description
  Many modbus devices support only one or very few clients.
endef

$(eval $(call RustBinPackage,modbus-proxy-rs))
$(eval $(call BuildPackage,modbus-proxy-rs))
