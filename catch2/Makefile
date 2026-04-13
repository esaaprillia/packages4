include $(TOPDIR)/rules.mk

PKG_NAME:=catch2
PKG_VERSION:=3.14.0
PKG_RELEASE:=1

PKG_SOURCE:=Catch2-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/catchorg/Catch2/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSL-1.0
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DIR:=$(BUILD_DIR)/Catch2-$(PKG_VERSION)
CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/catch2
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A modern, C++-native, test framework for unit-tests, TDD and BDD - using C++14, C++17 and later (C++11 support is in v2.x branch, and C++03 on the Catch1.x branch)
	DEPENDS:=
	URL:=https://github.com/catchorg/Catch2
endef

define Package/catch2/description
	Catch2 is mainly a unit testing framework for C++, but it also provides basic micro-benchmarking features, and simple BDD macros.
endef

CMAKE_OPTIONS += \
	-DCATCH_ENABLE_WERROR=False

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/share/pkgconfig/catch2.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/share/pkgconfig/catch2.pc
endef

$(eval $(call BuildPackage,catch2))
