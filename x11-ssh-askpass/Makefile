include $(TOPDIR)/rules.mk

PKG_NAME:=x11-ssh-askpass
PKG_VERSION:=1.2.4.1
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://github.com/sigmavirus24/x11-ssh-askpass/archive/$(PKG_VERSION)
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_HASH:=skip

HOST_BUILD_DEPENDS:=imake/host libxt/host
PKG_BUILD_DEPENDS:=imake/host

HOST_BUILD_PARALLEL:=1
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/x11-ssh-askpass
	SECTION:=font
	CATEGORY:=Font
	TITLE:=Lightweight passphrase dialog for SSH
	DEPENDS:=+libxt
	URL:=http://xorg.freedesktop.org/
endef

define Package/x11-ssh-askpass/description
	Lightweight passphrase dialog for SSH
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr \
	--with-app-defaults-dir=/etc/X11/app-defaults

define Build/Compile
	$(MAKE_VARS) $(MAKE) -C $(PKG_BUILD_DIR)/$(MAKE_PATH) $(MAKE_FLAGS) xmkmf includes
endef

define Host/Compile
	$(HOST_MAKE_VARS) $(MAKE) -C $(HOST_BUILD_DIR)/$(HOST_MAKE_PATH) $(HOST_MAKE_FLAGS) includes
endef

define Package/x11-ssh-askpass/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/* \
	  $(1)/usr/bin/
endef

$(eval $(call BuildPackage,x11-ssh-askpass))
$(eval $(call HostBuild))
