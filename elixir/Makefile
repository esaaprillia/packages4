include $(TOPDIR)/rules.mk

PKG_NAME:=elixir
PKG_VERSION:=1.19.5
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/elixir-lang/elixir/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=erlang/host

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

MAKE_FLAGS += \
	ELIXIR_ERL_OPTIONS="+fnu"

HOST_MAKE_FLAGS += \
	ELIXIR_ERL_OPTIONS="+fnu"

define Host/Install
	DESTDIR="$(HOST_BUILD_PREFIX)" $(MAKE) -C $(HOST_BUILD_DIR) install
endef

define Build/Install
	DESTDIR="$(PKG_INSTALL_DIR)" PREFIX=/usr $(MAKE) -C $(PKG_BUILD_DIR) install
endef

define Package/elixir/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/* $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,elixir))
