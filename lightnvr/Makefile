include $(TOPDIR)/rules.mk

PKG_NAME:=lightnvr
PKG_VERSION:=0.35.4
PKG_RELEASE:=1

#PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://github.com/nodejs/llhttp/archive/v$(PKG_VERSION)
#PKG_HASH:=skip

PKG_SOURCE_URL:=https://github.com/opensensor/lightNVR.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=e33ce83c69eafa4780de1df41410019a67aec907
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR:=build

PKG_BUILD_DEPENDS:=node/host flatbuffers/host flatbuffers

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/lightnvr
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=fully OSS lightweight network video recorder system witten in C with modern js frontend
	DEPENDS:=+cJSON +llhttp +libsqlite3 +ffmpeg +libuv +libmbedtls +libmosquittopp +libyaml +curl
	URL:=https://github.com/opensensor/lightNVR
endef

define Package/lightnvr/description
	LightNVR is a tiny, memory-optimized Network Video Recorder software written in C.
	While originally designed for resource-constrained devices like the Ingenic A1 SoC with only 256MB of RAM, it can run on any Linux system.
endef

CMAKE_OPTIONS += \
	-DGO2RTC_BINARY_PATH=/usr/bin -DTFLITE_HOST_TOOLS_DIR="$(STAGING_DIR_HOSTPKG)/bin" -DMBEDTLS_INCLUDE_DIRS="$(STAGING_DIR)/usr/include"

define Package/lightnvr/install
	$(INSTALL_DIR) $(1)/etc/lightnvr
	$(CP) $(PKG_INSTALL_DIR)/etc/lightnvr/* $(1)/etc/lightnvr/
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/lightnvr $(1)/usr/share/
endef

$(eval $(call BuildPackage,lightnvr))
