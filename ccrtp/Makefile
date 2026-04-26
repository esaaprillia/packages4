include $(TOPDIR)/rules.mk

PKG_NAME:=ccrtp
PKG_VERSION:=2.1.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://ftp.gnu.org/gnu/ccrtp/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0-or-later
PKG_LICENSE_FILES:=COPYING COPYING.addendum

include $(INCLUDE_DIR)/package.mk

define Package/ccrtp
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=GNU ccRTP is an implementation of RTP, the real-time transport protocol from the IETF
	DEPENDS:=+libstdcpp +libgcrypt +commoncpp
	URL:=https://www.gnu.org/software/ccrtp/
endef

define Package/ccrtp/description
GNU ccRTP is an implementation of RTP, the real-time transport protocol from the IETF (see RFC  3550, RFC 3551 and RFC 3555).
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libccrtp.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libccrtp.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libccrtp.pc
endef

define Package/ccrtp/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,ccrtp))
