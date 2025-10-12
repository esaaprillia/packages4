include $(TOPDIR)/rules.mk

PKG_NAME:=usrsctp
PKG_VERSION:=0.9.5.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/sctplab/usrsctp/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/usrsctp
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A portable SCTP userland stack
	DEPENDS:=+libstdcpp
	URL:=https://github.com/sctplab/usrsctp
endef

define Package/usrsctp/description
	This is a userland SCTP stack supporting FreeBSD, OpenBSD, Linux, Mac OS X and Windows.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-Dsctp_werror=OFF \
	-Dsctp_build_shared_lib=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/usrsctp
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/usrsctp
endef

define Package/usrsctp/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,usrsctp))
