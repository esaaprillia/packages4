include $(TOPDIR)/rules.mk

PKG_NAME:=capnproto
PKG_VERSION:=1.4.0
PKG_RELEASE:=1

PKG_SOURCE:=capnproto-c++-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://capnproto.org/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/capnproto-c++-$(PKG_VERSION)
CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/capnproto
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Cap'n Proto serialization/RPC system - core tools and C++ library
	DEPENDS:=+libstdcpp +libucontext +libopenssl +zlib
	URL:=https://github.com/capnproto/capnproto
endef

define Package/capnproto/description
	Cap'n Proto is an insanely fast data interchange format and capability-based RPC system. Think JSON, except binary. Or think Protocol Buffers, except faster.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=True

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/capnp*.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/capnp*.pc
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/kj*.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/kj*.pc
endef

define Package/capnproto/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,capnproto))
