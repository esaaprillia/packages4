include $(TOPDIR)/rules.mk

PKG_NAME:=rapidjson
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/Tencent/rapidjson/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=license.txt

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
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

CMAKE_OPTIONS += \
	-DRAPIDJSON_BUILD_DOC=OFF \
	-DRAPIDJSON_BUILD_EXAMPLES=OFF \
	-DRAPIDJSON_BUILD_TESTS=OFF \
	-DRAPIDJSON_BUILD_THIRDPARTY_GTEST=OFF \
	-DRAPIDJSON_BUILD_CXX11=OFF

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/rapidjson \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,cmake} \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,rapidjson))
