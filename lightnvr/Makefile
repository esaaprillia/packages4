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

#PKG_BUILD_DEPENDS:=node/host flatbuffers/host golang/host
PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1
PKG_BUILD_FLAGS:=no-mips16

include $(INCLUDE_DIR)/package.mk
###include $(INCLUDE_DIR)/cmake.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Package/lightnvr
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=fully OSS lightweight network video recorder system witten in C with modern js frontend
	DEPENDS:=+libpthread +libstdcpp $(GO_ARCH_DEPENDS)
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

GO_PKG:=github.com/opensensor/go2rtc
GO_PKG_BUILD_CONFIG_VARS+= BUILD_DIR="$(PKG_BUILD_DIR)/go2rtc"
GO_PKG_BUILD_DIR:=$(PKG_BUILD_DIR)/go2rtc/$(GO_PKG_WORK_DIR_NAME)/build

CMAKE_OPTIONS += \
	-DGIT_COMMIT=e33ce83c -DGO2RTC_BINARY_PATH=/usr/bin -DTFLITE_HOST_TOOLS_DIR="$(STAGING_DIR_HOSTPKG)/bin"

define Build/Compile
	$(call GoPackage/Build/Configure)
	$(call GoPackage/Build/Compile)
endef

define Package/lightnvr/install
	$(call GoPackage/Package/Install/Bin,$(PKG_INSTALL_DIR))
endef

$(eval $(call BuildPackage,lightnvr))
