include $(TOPDIR)/rules.mk

PKG_NAME:=vidstab
PKG_VERSION:=1.1.2
PKG_RELEASE:=1

PKG_SOURCE:=vid.stab-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/georgmartius/vid.stab/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0-or-later
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/vid.stab-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/vidstab
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Video stabilization library
	DEPENDS:=+libstdcpp +libgomp
	URL:=https://github.com/georgmartius/vid.stab
endef

define Package/vidstab/description
	Vidstab is a video stabilization library which can be plugged-in with Ffmpeg and Transcode.
endef

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/vidstab.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/vidstab.pc
endef

define Package/vidstab/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,vidstab))
