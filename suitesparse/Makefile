include $(TOPDIR)/rules.mk

PKG_NAME:=suitesparse
PKG_VERSION:=7.12.2
PKG_RELEASE:=1

PKG_SOURCE:=SuiteSparse-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/DrTimothyAldenDavis/SuiteSparse/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause AND LGPL-2.1-or-later AND GPL-2.0-or-later
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DIR:=$(BUILD_DIR)/SuiteSparse-$(PKG_VERSION)

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/suitesparse
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=The official SuiteSparse library
	DEPENDS:=+openblas +libgmp +libgomp +libmpfr +libstdcpp
	URL:=https://github.com/DrTimothyAldenDavis/SuiteSparse
endef

define Package/suitesparse/description
	SuiteSparse is a set of sparse-matrix-related packages written or co-authored by Tim Davis, available at https://github.com/DrTimothyAldenDavis/SuiteSparse
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/suitesparse/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/suitesparse_mongoose $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,suitesparse))
