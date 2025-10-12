include $(TOPDIR)/rules.mk

PKG_NAME:=plog
PKG_VERSION:=1.1.11
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/SergiusTheBest/plog/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/plog
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Portable, simple and extensible C++ logging library
	DEPENDS:=
	URL:=https://github.com/SergiusTheBest/plog
endef

define Package/plog/description
	Plog - portable, simple and extensible C++ logging library
endef

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,plog))
