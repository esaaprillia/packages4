include $(TOPDIR)/rules.mk

PKG_NAME:=simdjson
PKG_VERSION:=5.0.5
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/simdjson/simdjson/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0 MIT
PKG_LICENSE_FILES:=LICENSE LICENSE-MIT

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/simdjson
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Parsing gigabytes of JSON per second
	DEPENDS:=+libstdcpp
	URL:=https://github.com/simdjson/simdjson
endef

define Package/simdjson/description
	JSON is everywhere on the Internet. Servers spend a lot of time parsing it. We need a fresh approach. The simdjson library uses commonly available SIMD instructions and microparallel algorithms to parse JSON 4x faster than RapidJSON and 25x faster than JSON for Modern C++.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/simdjson.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/simdjson.pc
endef

define Package/simdjson/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,simdjson))
