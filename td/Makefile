include $(TOPDIR)/rules.mk

PKG_NAME:=td
PKG_VERSION:=1.8.67
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/tdlib/td.git
PKG_SOURCE_VERSION:=bc9c263e2bfee06aaab41e82db51a103376030bc
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSL-1.0
PKG_LICENSE_FILES:=LICENSE_1_0.txt

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_DEPENDS:=td/host
HOST_BUILD_DEPENDS:=gperf/host

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/td
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Cross-platform library for building Telegram clients
	DEPENDS:=+libstdcpp +zlib +libopenssl +libopenssl-legacy
	URL:=https://github.com/tdlib/td
endef

define Package/td/description
	TDLib (Telegram Database library) is a cross-platform library for building Telegram clients.
	It can be easily used from almost any programming language.
endef

define Host/Install
	$(INSTALL_DIR) $(DL_DIR)
	$(CP) $(HOST_BUILD_DIR)/{td,tdutils} $(DL_DIR)/
endef

define Build/Prepare
	$(call Build/Prepare/Default)
	$(CP) $(DL_DIR)/td/generate/auto/td $(PKG_BUILD_DIR)/
	$(CP) $(DL_DIR)/td/generate/auto $(PKG_BUILD_DIR)/td/generate/
	$(CP) $(DL_DIR)/tdutils/generate/auto $(PKG_BUILD_DIR)/tdutils/generate/
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/td/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,td))
