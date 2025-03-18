include $(TOPDIR)/rules.mk

PKG_NAME:=rapidjson
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/Tencent/rapidjson.git
PKG_SOURCE_VERSION:=24b5e7a8b27f42fa16b96fc70aade9106cf7102f
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=license.txt

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/rapidjson
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Fast JSON parser/generator for C++ with both SAX/DOM style API
	DEPENDS:=
	URL:=https://github.com/Tencent/rapidjson
endef

define Package/rapidjson/description
	A fast JSON parser/generator for C++ with both SAX/DOM style API
endef

CMAKE_HOST_OPTIONS += \
	-DRAPIDJSON_BUILD_DOC=OFF \
	-DRAPIDJSON_BUILD_EXAMPLES=OFF \
	-DRAPIDJSON_BUILD_TESTS=OFF \
	-DRAPIDJSON_BUILD_THIRDPARTY_GTEST=OFF \
	-DRAPIDJSON_BUILD_CXX11=OFF

CMAKE_OPTIONS += \
	-DRAPIDJSON_BUILD_DOC=OFF \
	-DRAPIDJSON_BUILD_EXAMPLES=OFF \
	-DRAPIDJSON_BUILD_TESTS=OFF \
	-DRAPIDJSON_BUILD_THIRDPARTY_GTEST=OFF \
	-DRAPIDJSON_BUILD_CXX11=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/RapidJSON.pc
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,rapidjson))
