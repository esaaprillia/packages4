include $(TOPDIR)/rules.mk

PKG_NAME:=uriparser
PKG_VERSION:=1.0.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/uriparser/uriparser/releases/download/uriparser-$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0 MIT
PKG_LICENSE_FILES:=COPYING.Apache-2.0 COPYING.BSD-3-Clause COPYING.LGPL-2.1

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/uriparser
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Strictly RFC 3986 compliant URI parsing and handling library written in C99
	DEPENDS:=+libstdcpp
	URL:=https://github.com/uriparser/uriparser
endef

define Package/uriparser/description
	uriparser is a strictly RFC 3986 compliant URI parsing and handling library written in C99. uriparser is cross-platform, fast, supports both char and wchar_t, and is licensed under the BSD-3-Clause license (except for the test suite that is licensed under the LGPL-2.1-or-later license and for the fuzzing code that is licensed under the Apache-2.0 license).
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DURIPARSER_BUILD_DOCS=OFF \
	-DURIPARSER_BUILD_TESTS=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/liburiparser.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/liburiparser.pc
endef

define Package/uriparser/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/uriparse $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,uriparser))
