include $(TOPDIR)/rules.mk

PKG_NAME:=lightnvr
PKG_VERSION:=0.41.1
PKG_RELEASE:=1

#PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://github.com/nodejs/llhttp/archive/v$(PKG_VERSION)
#PKG_HASH:=skip

PKG_SOURCE_URL:=https://github.com/opensensor/lightNVR.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=856dfe8ba5cf43a013f338a6f6b7bae26ba141fe
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR:=build

PKG_BUILD_DEPENDS:=node/host flatbuffers/host golang/host
PKG_BUILD_PARALLEL:=1
PKG_BUILD_FLAGS:=no-mips16

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Package/lightnvr
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=fully OSS lightweight network video recorder system witten in C with modern js frontend
	DEPENDS:=+libpthread +libstdcpp +cJSON +llhttp +sqlite3-cli +ffmpeg +libuv +libmbedtls +libmosquittopp +libyaml +curl +zoneinfo-all +zoneinfo-core $(GO_ARCH_DEPENDS)
	URL:=https://github.com/opensensor/lightNVR
endef

define Package/lightnvr/description
	LightNVR is a tiny, memory-optimized Network Video Recorder software written in C.
	While originally designed for resource-constrained devices like the Ingenic A1 SoC with only 256MB of RAM, it can run on any Linux system.
endef

NODEJS_CPU:=$(subst powerpc,ppc,$(subst aarch64,arm64,$(subst x86_64,x64,$(subst i386,ia32,$(ARCH)))))
TMPNPM:=$(shell mktemp -u XXXXXXXXXX)
NPM_CACHE_DIR:=$(if $(call qstrip,$(CONFIG_NODEJS_NPM_CACHE_DIR)),$(call qstrip,$(CONFIG_NODEJS_NPM_CACHE_DIR)),$(TMP_DIR))

TARGET_CFLAGS+=$(FPIC)
TARGET_CPPFLAGS+=$(FPIC)

CMAKE_OPTIONS += \
	-DGIT_COMMIT=856dfe8b -DGO2RTC_BINARY_PATH=/usr/bin/go2rtc -DTFLITE_HOST_TOOLS_DIR="$(STAGING_DIR_HOSTPKG)/bin"

define Package/lightnvr/conffiles
/etc/lightnvr
/etc/lightnvr/go2rtc
endef

define Build/Compile
	cd $(PKG_BUILD_DIR)/web; \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	npm_config_nodedir=$(STAGING_DIR)/usr/ \
	$(if $(CONFIG_NODEJS_NPM_KEEP_CACHE), npm_config_cache=$(NPM_CACHE_DIR)/npm-cache-$(PKG_NPM_NAME),npm_config_cache=$(TMP_DIR)/npm-cache-$(TMPNPM)) \
	npm install --prefer-offline --no-audit --global-style --install-strategy=shallow --build-from-source --target_arch=$(NODEJS_CPU)
	cd $(PKG_BUILD_DIR)/web; \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	npm_config_nodedir=$(STAGING_DIR)/usr/ \
	$(if $(CONFIG_NODEJS_NPM_KEEP_CACHE), npm_config_cache=$(NPM_CACHE_DIR)/npm-cache-$(PKG_NPM_NAME),npm_config_cache=$(TMP_DIR)/npm-cache-$(TMPNPM)) \
	npm run build:maps --prefer-offline --no-audit --global-style --install-strategy=shallow --build-from-source --target_arch=$(NODEJS_CPU)
	rm -rf $(TMP_DIR)/npm-cache-$(TMPNPM)
	rm -f $(PKG_BUILD_DIR)/web/node_modules/.package-lock.json
	find $(PKG_BUILD_DIR)/web/node_modules -type d -empty -print0 | xargs -0 -r rmdir || true
	rm -rf $(PKG_BUILD_DIR)/go2rtc/pkg/alsa/device/asound_arch.c
	rm -rf $(PKG_BUILD_DIR)/go2rtc/pkg/v4l2/device/videodev2_arch.c
	cd $(PKG_BUILD_DIR)/go2rtc; \
	$(GO_GENERAL_BUILD_CONFIG_VARS) \
	$(GO_PKG_BUILD_CONFIG_VARS) \
	$(GO_PKG_VARS) \
	go build
	$(call Build/Compile/Default)
endef

define Package/lightnvr/install
	$(INSTALL_DIR) $(1)/etc/lightnvr
	$(CP) $(PKG_INSTALL_DIR)/etc/lightnvr/* $(1)/etc/lightnvr/
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/lightnvr.init $(1)/etc/init.d/lightnvr
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/go2rtc/go2rtc $(1)/usr/bin/
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/lightnvr $(1)/usr/share/
	$(INSTALL_DIR) $(1)/var/lib/lightnvr/www
	$(CP) $(PKG_BUILD_DIR)/web/dist/* $(1)/var/lib/lightnvr/www/
endef

$(eval $(call BuildPackage,lightnvr))
