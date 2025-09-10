include $(TOPDIR)/rules.mk

PKG_NAME:=tetris-cli
PKG_VERSION:=23.96.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/blueOkiris/tetris-cli/tar.gz/v$(PKG_VERSION)?
PKG_HASH:=skip

PKG_MAINTAINER:=
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=rust/host
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/rust/rust-package.mk

define Package/tetris-cli
  SECTION:=sound
  CATEGORY:=Sound
  TITLE:=Tetris in a Linux terminal
  DEPENDS:=$(RUST_ARCH_DEPENDS) +libstdcpp
  URL:=https://github.com/blueOkiris/tetris-cli
endef

define Package/tetris-cli/description
  Tiny tetris game in a terminal
endef

$(eval $(call RustBinPackage,tetris-cli))
$(eval $(call BuildPackage,tetris-cli))
