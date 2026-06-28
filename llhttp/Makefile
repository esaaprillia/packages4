include $(TOPDIR)/rules.mk

PKG_NAME:=llhttp
PKG_VERSION:=9.4.2
PKG_RELEASE:=1

PKG_SOURCE:=llhttp-release-v$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/nodejs/llhttp/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR:=build

PKG_BUILD_DEPENDS:=node/host
PKG_BUILD_DIR:=$(BUILD_DIR)/llhttp-release-v$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/llhttp
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Port of http_parser to llparse
	DEPENDS:=
	URL:=https://github.com/nodejs/llhttp
endef

define Package/llhttp/description
	Let's face it, http_parser is practically unmaintainable. Even introduction of a single new method results in a significant code churn.
endef

CMAKE_OPTIONS += \
	-DLLHTTP_BUILD_SHARED_LIBS=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libllhttp.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libllhttp.pc
endef

define Package/llhttp/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,llhttp))
