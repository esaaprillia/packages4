include $(TOPDIR)/rules.mk

PKG_NAME:=re2c
PKG_VERSION:=4.5.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/skvadrik/re2c/releases/download/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LicenseRef-re2c
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR:=build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/re2c
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=re2c is a free and open-source lexer generator for C/C++, Go and Rust.
	DEPENDS:=+libstdcpp
	URL:=https://github.com/skvadrik/re2c
endef

define Package/re2c/description
	Lexer generator for C, C++, D, Go, Haskell, Java, JS, OCaml, Python, Rust, Swift, V and Zig.
endef

CMAKE_OPTIONS += \
	-DRE2C_REBUILD_DOCS=OFF

define Package/re2c/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,re2c))
