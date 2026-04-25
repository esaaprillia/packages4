include $(TOPDIR)/rules.mk

PKG_NAME:=subscriberregistry
PKG_VERSION:=5.0
PKG_RELEASE:=1

#PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://ftp.gnu.org/gnu/osip/
#PKG_HASH:=skip

PKG_SOURCE_URL:=https://github.com/RangeNetworks/subscriberRegistry.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=c65b5d59f744a8df5f3395e217f2598f53e9fe65
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=AGPL-3.0
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=cppzmq

PKG_BUILD_PARALLEL:=1
PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk

define Package/subscriberregistry
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Subscriber Registry API and SIP Authentication Server
	DEPENDS:=+libosip2 +libsqlite3 +libzmq-nc +coredumper +libexecinfo
	URL:=https://github.com/RangeNetworks/subscriberRegistry
endef

define Package/subscriberregistry/description
Subscriber Registry API and SIP Authentication Server
endef

#TARGET_CFLAGS += -D_GNU_SOURCE
TARGET_CFLAGS += -std=c++14

define Build/Prepare
	$(call Build/Prepare/Default)
	$(SED) 's,/usr/local/include/zmq.h,$(STAGING_DIR)/usr/include/zmq.h,g' $(PKG_BUILD_DIR)/configure.ac
	#$(SED) 's,/usr/include/zmq.h,$(STAGING_DIR)/usr/include/zmq.h,g' $(PKG_BUILD_DIR)/configure.ac
endef

CONFIGURE_VARS += \
	CC="$(TARGET_CC)" \
	CCAS="$(TARGET_CC)" \
	CXX="$(TARGET_CXX)" \
	LD="$(TARGET_CC)" \
	LIBS=-lexecinfo \
	CFLAGS="$(TARGET_CFLAGS)" \
	CCASFLAGS="$(TARGET_CFLAGS)" \
	CXXFLAGS="$(TARGET_CXXFLAGS)" \
	CPPFLAGS="$(TARGET_CPPFLAGS)" \
	LDFLAGS="$(TARGET_LDFLAGS)"

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) \
		CC="$(TARGET_CC)" \
		CCAS="$(TARGET_CC)" \
		CXX="$(TARGET_CXX)" \
		LD="$(TARGET_CC)" \
		LIBS=-lexecinfo \
		CFLAGS="$(TARGET_CFLAGS)" \
		CCASFLAGS="$(TARGET_CFLAGS)" \
		CXXFLAGS="$(TARGET_CXXFLAGS)" \
		CPPFLAGS="$(TARGET_CPPFLAGS)" \
		LDFLAGS="$(TARGET_LDFLAGS)" \
		DESTDIR="$(PKG_INSTALL_DIR)" install
endef

define Package/subscriberregistry/install
	$(INSTALL_DIR) $(1)/etc
	$(CP) $(PKG_INSTALL_DIR)/etc/OpenBTS $(1)/etc/
	$(INSTALL_DIR) $(1)/usr/sbin
	$(CP) $(PKG_INSTALL_DIR)/usr/sbin/* $(1)/usr/sbin/
endef

$(eval $(call BuildPackage,subscriberregistry))
