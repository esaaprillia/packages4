include $(TOPDIR)/rules.mk

PKG_NAME:=arpack-ng
PKG_VERSION:=3.9.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/opencollab/arpack-ng/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=COPYING

PKG_INSTALL:=1
PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk

define Package/arpack-ng
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Collection of Fortran77 subroutines designed to solve large scale eigenvalue problems.
	DEPENDS:=+libstdcpp +openblas
	URL:=https://github.com/opencollab/arpack-ng
endef

define Package/arpack-ng/description
	ARPACK-NG is a collection of Fortran77 subroutines designed to solve large scale eigenvalue problems.
endef

CONFIGURE_ARGS += \
	--prefix=/usr \
	--enable-shared \
	--enable-static \
	--enable-icb

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include 
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/*arpack.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/*arpack.pc
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/*arpack.pc
endef

define Package/arpack-ng/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,arpack-ng))
