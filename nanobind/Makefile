include $(TOPDIR)/rules.mk

PKG_NAME:=nanobind
PKG_VERSION:=2.10.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/wjakob/nanobind/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=robin-map
HOST_BUILD_DEPENDS:=robin-map/host

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/nanobind
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=nanobind: tiny and efficient C++/Python bindings
	DEPENDS:=
	URL:=https://github.com/wjakob/nanobind
endef

define Package/nanobind/description
	nanobind is a small binding library that exposes C++ types in Python and vice versa.
endef

CMAKE_OPTIONS += \
	-DNB_USE_SUBMODULE_DEPS=OFF

CMAKE_HOST_OPTIONS += \
	-DNB_USE_SUBMODULE_DEPS=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,nanobind))
