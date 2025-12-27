include $(TOPDIR)/rules.mk

PKG_NAME:=libplacebo
PKG_VERSION:=7.351.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-v$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://code.videolan.org/videolan/libplacebo/-/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=LICENSE

PYTHON3_PKG_BUILD:=0
PKG_BUILD_PARALLEL:=1
PKG_BUILD_DEPENDS:=meson/host python-glad2/host python-mako/host python-standard-distutils/host
PKG_BUILD_DIR:=$(BUILD_DIR)/libplacebo-v$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/meson.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

define Package/libplacebo
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Reusable library for GPU-accelerated video/image rendering
	DEPENDS:=+libstdcpp +glslang +lcms2 +shaderc +vulkan-loader +libxxhash +libunwind
	URL:=https://libplacebo.org/
endef

define Package/libplacebo/description
	libplacebo is, in a nutshell, the core rendering algorithms and ideas of mpv rewritten as an independent library. As of today, libplacebo contains a large assortment of video processing shaders, focusing on both quality and performance.
endef

MESON_VARS += $(PYTHON3_VARS)

MESON_ARGS += \
	-Dbackend_max_links=4 \
	-Ddemos=false \
	-Dglslang=enabled \
	-Dlcms=enabled \
	-Dshaderc=enabled \
	-Dtests=false \
	-Dvulkan=enabled

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include 
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libplacebo.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libplacebo.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libplacebo.pc
endef

define Package/libplacebo/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libplacebo))
