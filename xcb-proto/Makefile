include $(TOPDIR)/rules.mk

PKG_NAME:=xcb-proto
PKG_VERSION:=1.17.0
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://xcb.freedesktop.org/dist/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=2c1bacd2110f4799f74de6ebb714b94cf6f80fb112316b1219480fd22562148c

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=python3/host

HOST_BUILD_PARALLEL:=1
PKG_BUILD_PARALLEL:=1

PYTHON3_PKG_BUILD:=0
PKG_INSTALL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

define Package/xcb-proto
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=XML-XCB protocol descriptions
	URL:=http://xorg.freedesktop.org/
	BUILDONLY:=1
endef

define Package/xcb-proto/description
	XML-XCB protocol descriptions used by libxcb for the X11 protocol & extensions
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_VARS += \
	PYTHON="$(STAGING_DIR_HOSTPKG)/bin/$(PYTHON3)"

CONFIGURE_ARGS += \
	--prefix=/usr

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/share \
	  $(1)/$(PYTHON3_PKG_DIR)

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/pkgconfig \
	  $(1)/usr/share/
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/xcb \
	  $(1)/usr/share/
	$(CP) \
	  $(PKG_INSTALL_DIR)/$(PYTHON3_PKG_DIR)/xcbgen \
	  $(1)/$(PYTHON3_PKG_DIR)
	$(SED) \
		 's,/usr/share,$$$${prefix}/share,g' \
		 $(1)/usr/share/pkgconfig/xcb-proto.pc
endef

define Host/Install
	$(call Host/Install/Default)
	$(INSTALL_DIR) \
	  $(STAGING_DIR_HOSTPKG)/lib/pkgconfig

	$(CP) \
	  $(HOST_BUILD_DIR)/xcb-proto.pc \
	  $(STAGING_DIR_HOSTPKG)/lib/pkgconfig/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,xcb-proto))
