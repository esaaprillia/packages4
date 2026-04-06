include $(TOPDIR)/rules.mk

PKG_NAME:=simde
PKG_VERSION:=0.8.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/simd-everywhere/simde/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/meson.mk

define Package/simde
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Implementations of SIMD instruction sets for systems which don't natively support them.
	DEPENDS:=
	URL:=https://github.com/simd-everywhere/simde
endef

define Package/simde/description
	The SIMDe header-only library provides fast, portable implementations of SIMD intrinsics on hardware which doesn't natively support them, such as calling SSE functions on ARM.
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/simde $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/simde.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/simde.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/simde.pc
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,simde))
