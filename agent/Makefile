include $(TOPDIR)/rules.mk

PKG_NAME:=agent
PKG_VERSION:=3.11.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/kerberos-io/agent/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=golang/host node-yarn/host
PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0
PKG_BUILD_FLAGS:=no-mips16

#GO_PKG:=github.com/caddyserver/caddy
#GO_PKG_BUILD_PKG:=$(GO_PKG)/cmd/caddy

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Package/agent
  SECTION:=net
  CATEGORY:=Network
  TITLE:=Kerberos Agent
  DEPENDS:=$(GO_ARCH_DEPENDS) +ffmpeg +libstdcpp
  URL:=https://github.com/kerberos-io/agent
endef

define Package/agent/description
  An open and scalable video surveillance system for anyone making this world a better and more peaceful place.
endef

define Build/Compile
	cd $(PKG_BUILD_DIR)/ui; \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	yarn install
	cd $(PKG_BUILD_DIR)/ui; \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	PUBLIC_URL="./" yarn run build
	cd $(PKG_BUILD_DIR)/machinery; \
	$(GO_GENERAL_BUILD_CONFIG_VARS) \
	$(GO_PKG_BUILD_CONFIG_VARS) \
	$(GO_PKG_VARS) \
	go mod download
	cd $(PKG_BUILD_DIR)/machinery; \
	$(GO_GENERAL_BUILD_CONFIG_VARS) \
	$(GO_PKG_BUILD_CONFIG_VARS) \
	$(GO_PKG_VARS) \
	go build -v -tags "timetzdata,netgo,osusergo" --ldflags "-s -w -X github.com/kerberos-io/agent/machinery/src/utils.VERSION=$(PKG_VERSION) -checklinkname=0" main.go
	ls -l $(PKG_BUILD_DIR)/machinery/*
	ls -l $(PKG_BUILD_DIR)/ui/*
endef

define Package/agent/install
	$(INSTALL_DIR) $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/machinery/main $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/agent
	$(CP) ./files/version $(1)/agent/version
	$(INSTALL_DIR) $(1)/agent/data
	$(CP) $(PKG_BUILD_DIR)/machinery/data/* $(1)/agent/data/
	$(CP) $(PKG_BUILD_DIR)/machinery/data/config/config.json $(1)/agent/data/config.template.json
	$(INSTALL_DIR) $(1)/agent/www
	$(CP) $(PKG_BUILD_DIR)/machinery/www/* $(1)/agent/www/
endef

$(eval $(call BuildPackage,agent))
