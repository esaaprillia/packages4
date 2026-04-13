include $(TOPDIR)/rules.mk

PKG_NAME:=rapidcheck
#PKG_VERSION:=1.17.0
PKG_RELEASE:=1

#PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://github.com/emil-e/rapidcheck/archive/v$(PKG_VERSION)
#PKG_HASH:=skip

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/emil-e/rapidcheck
PKG_SOURCE_DATE:=2026-11-02
PKG_SOURCE_VERSION:=b96a4e626ef4c7348dcd16c500353c2f997a9f3f
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE.md

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/rapidcheck
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=QuickCheck clone for C++ with the goal of being simple to use with as little boilerplate as possible.
	DEPENDS:=+libstdcpp
	URL:=https://github.com/emil-e/rapidcheck
endef

define Package/rapidcheck/description
	RapidCheck is a C++ framework for property based testing inspired by QuickCheck and other similar frameworks.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DRC_ENABLE_GTEST=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/rapidcheck*.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/rapidcheck*.pc
endef

define Package/rapidcheck/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,rapidcheck))
