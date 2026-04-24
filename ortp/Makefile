include $(TOPDIR)/rules.mk

PKG_NAME:=ortp
PKG_VERSION:=5.4.107
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://gitlab.linphone.org/BC/public/ortp/-/archive/$(PKG_NAME)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=AGPLv3
PKG_LICENSE_FILES:=LICENSE.txt

CMAKE_BINARY_SUBDIR:=build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/ortp
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=oRTP is a C library implementing the RTP protocol (rfc3550).
	DEPENDS:=+bctoolbox +libstdcpp
	URL:=https://gitlab.linphone.org/BC/public/ortp
endef

define Package/ortp/description
oRTP is a C library implementing the RTP protocol (rfc3550).
It is available for most unix clones (primilarly Linux and HP-UX), and Microsoft Windows.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=YES \
	-DENABLE_UNIT_TESTS=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/ortp.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/ortp.pc
endef

define Package/ortp/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,ortp))
