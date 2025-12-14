include $(TOPDIR)/rules.mk

PKG_NAME:=libraop
PKG_VERSION:=9012286
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/music-assistant/libraop.git
PKG_SOURCE_VERSION:=901228626880cdc717ccf7e86409ad5c1f69fa50
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=
PKG_LICENSE_FILES:=

PKG_BUILD_PARALLEL:=1
PKG_BUILD_DEPENDS:=openssl

include $(INCLUDE_DIR)/package.mk

define Package/libraop
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=RAOP player and library (AirPlay)
	DEPENDS:=+libstdcpp
	URL:=https://github.com/music-assistant/libraop
endef

define Package/libraop/description
	Modified version of cliraop/raop-play for Music Assistant.
endef

TARGET_CFLAGS += $(FPIC)

MAKE_FLAGS += \
	HOST="linux" \
	PLATFORM="$(ARCH)"

define Package/libraop/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
endef

$(eval $(call BuildPackage,libraop))
