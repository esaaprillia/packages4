include $(TOPDIR)/rules.mk

PKG_NAME:=libcouchbase
PKG_VERSION:=3.3.15
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/couchbase/libcouchbase/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/libcouchbase
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=The couchbase client for C
	URL:=https://github.com/couchbase/libcouchbase/
	DEPENDS:=+libstdcpp +libevent2 +libev +libuv +libopenssl
endef

define Package/libcouchbase/description
	This is the C client library for Couchbase It communicates with the cluster and speaks the relevant protocols necessary to connect to the cluster and execute data operations.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DLCB_NO_MOCK=ON \
	-DLCB_SKIP_GIT_VERSION=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libcouchbase.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libcouchbase.pc
endef

define Package/libcouchbase/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libcouchbase))
