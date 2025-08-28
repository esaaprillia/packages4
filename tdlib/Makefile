include $(TOPDIR)/rules.mk

PKG_NAME:=tdlib
PKG_VERSION:=1.8.52
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/tdlib/td.git
PKG_SOURCE_VERSION:=4269f54e16b9cf564efc2db5bcd29743a2eec6ee
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSL-1.0 license
PKG_LICENSE_FILES:=LICENSE_1_0.txt

CMAKE_BINARY_SUBDIR := build

HOST_BUILD_DEPENDS:=gperf/host
PKG_BUILD_DEPENDS:=gperf/host

PKG_USE_NINJA:=0
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/tdlib
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Cross-platform library for building Telegram clients
	DEPENDS:=+libstdcpp +zlib +libopenssl
	URL:=https://github.com/tdlib/td
endef

define Package/tdlib/description
	TDLib (Telegram Database library) is a cross-platform library for building Telegram clients.
	It can be easily used from almost any programming language.
endef

CMAKE_OPTIONS += \
	-DCMAKE_BUILD_TYPE=Release \
	-DCMAKE_CROSSCOMPILING=OFF \
	-DBUILD_SHARED_LIBS=ON \
	-DTD_ALWAYS_GENERATE_SOURCE=ON \
	-DGPERF_CXX_COMPILER="$(CMAKE_HOST_CXX_COMPILER)" \
	-DTL_PARSER_C_COMPILER="$(CMAKE_HOST_C_COMPILER)" \
	-DGENERATE_CXX_COMPILER="$(CMAKE_HOST_CXX_COMPILER)"

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/td \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,cmake,*.so*,*.a} \
	  $(1)/usr/lib/
endef

define Package/tdlib/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,tdlib))
