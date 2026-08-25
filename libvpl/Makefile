include $(TOPDIR)/rules.mk

PKG_NAME:=libvpl
PKG_VERSION:=2.17.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/intel/libvpl/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/libvpl
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Intel Video Processing Library (Intel VPL)
	DEPENDS:=+libstdcpp
	URL:=https://github.com/intel/libvpl
endef

define Package/libvpl/description
	Intel Video Processing Library (Intel VPL) provides access to hardware accelerated video decode, encode, and processing capabilities on Intel GPUs to support AI visual inference, media delivery, cloud gaming, and virtual desktop infrastructure use cases.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DVPL_INSTALL_ENVDIR=/usr/share/libvpl/env \
	-DVPL_INSTALL_LICENSEDIR=/usr/share/doc/libvpl \
	-DVPL_INSTALL_MODFILEDIR=/usr/share/libvpl/modulefiles \
	-DBUILD_EXAMPLES=OFF \
	-DINSTALL_EXAMPLES=OFF \
	-DBUILD_TESTS=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/vpl.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/vpl.pc
endef

define Package/libvpl/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libvpl))
