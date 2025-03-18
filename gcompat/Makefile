include $(TOPDIR)/rules.mk

PKG_NAME:=gcompat
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://git.adelielinux.org/adelie/gcompat/-/archive/$(PKG_VERSION)/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=NCSA
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk

define Package/gcompat
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=GNU C Library compatibility layer for musl
	DEPENDS:=+libucontext +musl-obstack
	URL:=https://git.adelielinux.org/adelie/gcompat
endef

define Package/gcompat/description
	This distribution contains the implementation of gcompat, a library which provides glibc-compatible APIs for use on musl libc systems.
endef

LDFLAGS="$(TARGET_LDFLAGS) -lgcc_s"

MAKE_FLAGS += \
	WITH_LIBUCONTEXT=1 \
	WITH_OBSTACK=musl-obstack \
	LINKER_PATH="/lib/ld-musl-aarch64.so.1" \
	LOADER_NAME="ld-linux-aarch64.so.1" \
	LDFLAGS="$(TARGET_LDFLAGS) -lgcc_s"

define Package/gcompat/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,gcompat))
