include $(TOPDIR)/rules.mk

PKG_NAME:=core
PKG_VERSION:=16.16.0
PKG_RELEASE:=1

#PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://github.com/datarhei/core/archive/v$(PKG_VERSION)
#PKG_HASH:=skip

PKG_SOURCE_URL:=https://github.com/datarhei/core.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=eeb63ecb971293a2b507a11ca5da30516232ec8c
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0
PKG_BUILD_FLAGS:=no-mips16

GO_PKG:=github.com/datarhei/core

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Package/core
  SECTION:=net
  CATEGORY:=Network
  TITLE:=datarhei Core is management for FFmpeg processes without development effort.
  DEPENDS:=$(GO_ARCH_DEPENDS)
  URL:=https://github.com/datarhei/core
endef

define Package/core/description
  The datarhei Core is a process management solution for FFmpeg that offers a range of interfaces for media content, including HTTP, RTMP, SRT, and storage options.
endef

define Package/core/install
	$(call GoPackage/Package/Install/Bin,$(PKG_INSTALL_DIR))
	$(INSTALL_DIR) $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
endef

$(eval $(call BuildPackage,core))
