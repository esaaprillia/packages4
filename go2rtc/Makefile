include $(TOPDIR)/rules.mk

PKG_NAME:=go2rtc
PKG_VERSION:=1.9.14
PKG_RELEASE:=1

#PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://codeload.github.com/XTLS/Xray-core/tar.gz/v$(PKG_VERSION)?
#PKG_HASH:=a41f170a03fa25d9d39f23f344540b02336a5c893d97b1b837b9477f4b35bc7f

PKG_SOURCE_URL:=https://github.com/opensensor/go2rtc.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=43ef540adc09d54962c70f6c22589119730929ad
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0
PKG_BUILD_FLAGS:=no-mips16

#GO_PKG:=github.com/opensensor/go2rtc

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Package/go2rtc
  TITLE:=A platform for building proxies to bypass network restrictions
  SECTION:=net
  CATEGORY:=Network
  URL:=Ultimate camera streaming application with support for dozens formats and protocols.
  DEPENDS:=$(GO_ARCH_DEPENDS)
  URL:=https://github.com/opensensor/go2rtc
endef

define Package/go2rtc/description
  Ultimate camera streaming application with support RTSP, RTMP, HTTP-FLV, WebRTC, MSE, HLS, MP4, MJPEG, HomeKit, FFmpeg, etc.
endef

define Build/Compile
	cd $(PKG_BUILD_DIR); \
	$(GO_GENERAL_BUILD_CONFIG_VARS) \
	$(GO_PKG_BUILD_CONFIG_VARS) \
	$(GO_PKG_VARS) \
	go build
endef

define Package/go2rtc/install
	$(call GoPackage/Package/Install/Bin,$(PKG_INSTALL_DIR))
	$(INSTALL_DIR) $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/go2rtc $(1)/usr/bin/
endef

$(eval $(call BuildPackage,go2rtc))
