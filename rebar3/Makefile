include $(TOPDIR)/rules.mk

PKG_NAME:=rebar3
PKG_VERSION:=3.27.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/erlang/rebar3/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=erlang/host

PKG_BUILD_PARALLEL:=1
HOST_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/rebar3
	SECTION:=utils
	CATEGORY:=Utilities
	DEPENDS:=+erlang
	TITLE:=Erlang build tool that makes it easy to compile and test Erlang applications and releases.
	URL:=http://www.rebar3.org/
endef

define Package/rebar3/description
	Rebar3 is an Erlang tool that makes it easy to create, develop, and release Erlang libraries, applications, and systems in a repeatable manner.
endef

define Build/Compile
	(cd $(PKG_BUILD_DIR); ./bootstrap )
endef

define Host/Compile
	(cd $(HOST_BUILD_DIR); ./bootstrap )
endef

define Host/Install
	$(INSTALL_DIR) $(STAGING_DIR_HOSTPKG)/bin
	$(CP) $(HOST_BUILD_DIR)/rebar3 $(STAGING_DIR_HOSTPKG)/bin/
endef

define Build/Install
	$(INSTALL_DIR) $(PKG_INSTALL_DIR)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/rebar3 $(PKG_INSTALL_DIR)/usr/bin/
endef

define Package/rebar3/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/rebar3 $(1)/usr/bin/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,rebar3))
