include $(TOPDIR)/rules.mk

PKG_NAME:=elixir
PKG_VERSION:=1.18.4
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/elixir-lang/elixir/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=erlang/host

PKG_INSTALL:=1
PKG_BUILD_PARALLEL:=1
HOST_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/elixir
	SECTION:=utils
	CATEGORY:=Utilities
	DEPENDS:=+erlang
	TITLE:=Elixir is a dynamic, functional language for building scalable and maintainable applications
	URL:=https://elixir-lang.org/
endef

define Package/elixir/description
	Elixir is a dynamic, functional language for building scalable and maintainable applications
endef

MAKE_FLAGS+= \
	ELIXIR_ERL_OPTIONS="+fnu" \
	PREFIX="$(PKG_INSTALL_DIR)"

HOST_MAKE_FLAGS+= \
	ELIXIR_ERL_OPTIONS="+fnu" \
	PREFIX="$(HOST_BUILD_PREFIX)"

define Package/elixir/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/* $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,elixir))
