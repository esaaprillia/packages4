include $(TOPDIR)/rules.mk

PKG_NAME:=libplacebo
PKG_VERSION:=7.349.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/haasn/libplacebo/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=vulkan-headers
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/libplacebo
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Official mirror of libplacebo
	DEPENDS:=+libstdcpp
	URL:=http://libplacebo.org/
endef

define Package/libplacebo/description
	libplacebo is, in a nutshell, the core rendering algorithms and ideas of mpv rewritten as an independent library. As of today, libplacebo contains a large assortment of video processing shaders, focusing on both quality and performance.
endef

MESON_ARGS += \
	-Ddemos=false \
	-Ddovi=disabled \
	-Dglslang=disabled \
	-Dlcms=disabled \
	-Dlibdovi=disabled \
	-Dshaderc=disabled \
	-Dtests=false \
	-Dvulkan=disabled \
	-Dvk-proc-addr=disabled \
	-Dopengl=disabled \
	-Dgl-proc-addr=disabled \
	-Dd3d11=disabled \
	-Dunwind=disabled \
	-Dxxhash=disabled

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/libplacebo \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
	
	$(SED) \
	  's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libplacebo.pc

	$(SED) \
	  's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libplacebo.pc
endef

define Package/libplacebo/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libplacebo))
