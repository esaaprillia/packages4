include $(TOPDIR)/rules.mk

PKG_NAME:=libbacktrace
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/ianlancetaylor/libbacktrace.git
PKG_SOURCE_VERSION:=0034e33946824057b48c5e686a3aefc761b37384
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libbacktrace
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A C library that may be linked into a C/C++ program to produce symbolic backtraces
	DEPENDS:=+libunwind
	URL:=https://github.com/ianlancetaylor/libbacktrace
endef

define Package/libbacktrace/description
	The libbacktrace library may be linked into a program or library and used to produce symbolic backtraces. Sample uses would be to print a detailed backtrace when an error occurs or to gather detailed profiling information.
endef

CONFIGURE_ARGS += \
	--prefix=/usr \
	--enable-shared \
	--with-system-libunwind

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/backtrace*.h \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/libbacktrace/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libbacktrace))
