include $(TOPDIR)/rules.mk

PKG_NAME:=smqueue
PKG_VERSION:=5.0
PKG_RELEASE:=1

#PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://ftp.gnu.org/gnu/osip/
#PKG_HASH:=skip

PKG_SOURCE_URL:=https://github.com/RangeNetworks/smqueue.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=e168a262db311231c51cf7295f9bd1f440567485
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=AGPL-3.0
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1
PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk

define Package/smqueue
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=oSIP is an implementation of SIP
	DEPENDS:=+libosip2 +libzmq-nc
	URL:=https://github.com/RangeNetworks/smqueue/
endef

define Package/smqueue/description
The GNU oSIP library is an implementation of SIP - rfc3261.
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) \
		DESTDIR="$(PKG_INSTALL_DIR)" \
		install
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	#$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	#$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libosip2.pc $(1)/usr/lib/pkgconfig/
endef

define Package/smqueue/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,smqueue))
