include $(TOPDIR)/rules.mk

PKG_NAME:=clipper2
PKG_VERSION:=2.0.1
PKG_RELEASE:=1

PKG_SOURCE:=Clipper2_$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/AngusJohnson/Clipper2/archive/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSL-1.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/Clipper2-Clipper2_$(PKG_VERSION)

CMAKE_BINARY_SUBDIR:=build
CMAKE_SOURCE_SUBDIR:=CPP

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/clipper2
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Polygon Clipping, Offsetting & Triangulation in C++, C# and Delphi
	DEPENDS:=
	URL:=https://github.com/AngusJohnson/Clipper2
endef

define Package/clipper2/description
	The Clipper2 library performs intersection, union, difference and XOR boolean operations on both simple and complex polygons.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DCLIPPER2_TESTS=OFF \
	-DCLIPPER2_EXAMPLES=OFF \
	-DCLIPPER2_UTILS=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/Clipper2.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/Clipper2.pc
endef

define Package/clipper2/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,clipper2))
