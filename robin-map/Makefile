include $(TOPDIR)/rules.mk

PKG_NAME:=robin-map
PKG_VERSION:=1.4.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/Tessil/robin-map/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/robin-map
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=C++ implementation of a fast hash map and hash set using robin hood hashing
	DEPENDS:=
	URL:=https://github.com/Tessil/robin-map
endef

define Package/robin-map/description
	The robin-map library is a C++ implementation of a fast hash map and hash set using open-addressing and linear robin hood hashing with backward shift deletion to resolve collisions.
endef

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,robin-map))
