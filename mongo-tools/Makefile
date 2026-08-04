include $(TOPDIR)/rules.mk

PKG_NAME:=mongo-tools
PKG_VERSION:=100.17.0
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
GO_PKG_BUILD_PKG:= \
	github.com/mongodb/mongo-tools/bsondump/... \
	github.com/mongodb/mongo-tools/mongoimport/... \
	github.com/mongodb/mongo-tools/mongoexport/... \
	github.com/mongodb/mongo-tools/mongodump/... \
	github.com/mongodb/mongo-tools/mongorestore/... \
	github.com/mongodb/mongo-tools/mongostat/... \
	github.com/mongodb/mongo-tools/mongofiles/... \
	github.com/mongodb/mongo-tools/mongotop/...
GO_PKG_LDFLAGS_X:= \
	main.VersionStr=$(PKG_VERSION) \
	main.GitCommit=0b142f65e139525881b6a343bc56d8d98e5a1f90

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

define Package/mongo-tools/install
	$(call GoPackage/Package/Install/Bin,$(PKG_INSTALL_DIR))
	$(INSTALL_DIR) $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
endef

$(eval $(call BuildPackage,mongo-tools))
