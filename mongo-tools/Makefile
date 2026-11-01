include $(TOPDIR)/rules.mk

PKG_NAME:=mongo-tools
PKG_VERSION:=100.20.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/mongodb/mongo-tools/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0
PKG_BUILD_FLAGS:=no-mips16

GO_PKG:=github.com/mongodb/mongo-tools
GO_PKG_LDFLAGS_X:= \
	main.VersionStr="$(PKG_VERSION)" \
	main.GitCommit=7536fd7f3d67f5115de3eb2e271b327b7ce329b9

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Package/mongo-tools
  SECTION:=net
  CATEGORY:=Network
  TITLE:=MongoDB Tools
  DEPENDS:=$(GO_ARCH_DEPENDS)
  URL:=https://github.com/mongodb/mongo-tools
endef

define Package/mongo-tools/description
  The MongoDB tools provide import, export, and diagnostic capabilities.
endef

GO_PKG_INSTALL_ARGS= \
	-v \
	-buildvcs=false \
	-trimpath \
	-ldflags "all=$(GO_PKG_DEFAULT_LDFLAGS)" \
	$(if $(strip $(GO_PKG_DEFAULT_GCFLAGS)),-gcflags "all=$(GO_PKG_DEFAULT_GCFLAGS)") \
	$(if $(strip $(GO_PKG_DEFAULT_ASMFLAGS)),-asmflags "all=$(GO_PKG_DEFAULT_ASMFLAGS)") \
	$(if $(GO_PKG_ENABLE_PIE),-buildmode pie) \
	$(if $(filter $(GO_ARCH),366),-installsuffix "$(GO_386)") \
	$(if $(filter $(GO_ARCH),arm),-installsuffix "v$(GO_ARM)") \
	$(if $(filter $(GO_ARCH),arm64),-installsuffix "$(GO_ARM64)") \
	$(if $(filter $(GO_ARCH),mips mipsle),-installsuffix "$(GO_MIPS)") \
	$(if $(filter $(GO_ARCH),mips64 mips64le),-installsuffix "$(GO_MIPS64)") \
	$(if $(strip $(GO_PKG_GCFLAGS)),-gcflags "$(GO_PKG_GCFLAGS) $(GO_PKG_DEFAULT_GCFLAGS)") \
	$(if $(strip $(GO_PKG_CUSTOM_LDFLAGS)),-ldflags "$(GO_PKG_CUSTOM_LDFLAGS) $(GO_PKG_DEFAULT_LDFLAGS)") \
	$(if $(strip $(GO_PKG_PKGS)),-pkgs "$(GO_PKG_PKGS)") \
	$(if $(strip $(GO_PKG_TAGS)),-tags "$(GO_PKG_TAGS)")

GO_PKG_PKGS:=bsondump,mongoimport,mongoexport,mongodump,mongorestore,mongostat,mongofiles,mongotop

define Package/mongo-tools/install
	$(call GoPackage/Package/Install/Bin,$(PKG_INSTALL_DIR))
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
endef

$(eval $(call BuildPackage,mongo-tools))
