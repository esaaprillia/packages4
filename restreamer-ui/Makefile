include $(TOPDIR)/rules.mk

PKG_NPM_NAME:=restreamer-ui
PKG_NAME:=$(PKG_NPM_NAME)
PKG_VERSION:=1.14.0
PKG_RELEASE:=1

#PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://github.com/datarhei/restreamer-ui/archive/v$(PKG_VERSION)
#PKG_HASH:=skip

PKG_SOURCE_URL:=https://github.com/datarhei/restreamer-ui.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=580ea55709ddca7394aa66c7e9dfdbca4e539b3f
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=node/host node-yarn/host
PKG_BUILD_PARALLEL:=1
PKG_BUILD_FLAGS:=no-mips16

include $(INCLUDE_DIR)/package.mk

define Package/restreamer-ui
  SUBMENU:=Node.js
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Restreamer-UI
  URL:=https://datarhei.com/
  DEPENDS:=+libpthread +libstdcpp +libx11
endef

define Package/restreamer-ui/description
 The user interface of the Restreamer for the connection to the Core application.
endef

define Build/Compile
	rm -rf /home/runner/work/mosdns/mosdns/sdk/.config
	cd $(PKG_BUILD_DIR); \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	yarn install
	cd $(PKG_BUILD_DIR); \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	PUBLIC_URL="./" yarn run build
endef

define Package/restreamer-ui/install
	$(INSTALL_DIR) $(1)/var/lib/restreamer/ui
	$(CP) $(PKG_BUILD_DIR)/build/* $(1)/var/lib/restreamer/ui/
endef

$(eval $(call BuildPackage,restreamer-ui))
