include $(TOPDIR)/rules.mk

PKG_NAME:=cpputest
PKG_VERSION:=4.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/cpputest/cpputest/releases/download/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=COPYING

CMAKE_BINARY_SUBDIR:=build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/cpputest
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=CppUTest unit testing and mocking framework for C/C++
	DEPENDS:=
	URL:=https://github.com/cpputest/cpputest
endef

define Package/cpputest/description
	CppUTest unit testing and mocking framework for C/C++
endef

CMAKE_OPTIONS += \
	-DC++11=ON \
	-DLONGLONG=ON \
	-DTESTS=OFF \
	-DTESTS_BUILD_DISCOVER=OFF \
	-DEXAMPLES=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/cpputest.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/cpputest.pc
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,cpputest))
