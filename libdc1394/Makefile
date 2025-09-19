include $(TOPDIR)/rules.mk

PKG_NAME:=libdc1394
PKG_VERSION:=2.2.7
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://sourceforge.net/projects/libdc1394/files/libdc1394-2/2.2.7/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1-or-later
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libdc1394
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=High level programming interface to control IEEE 1394 based cameras
	DEPENDS:=+libstdcpp +libraw1394 +libusb-1.0
	URL:=https://damien.douxchamps.net/ieee1394/libdc1394/
endef

define Package/libdc1394/description
	libdc1394 is a library that provides a high level programming interface for application developers who wish to control and capture streams from IEEE 1394 based cameras that conform to the 1394-based Digital Camera Specifications (also known as the IIDC or DCAM Specifications). libdc1394 also supports some USB cameras that are IIDC compliant.
endef

CONFIGURE_ARGS += \
	--prefix=/usr

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/dc1394 \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/libdc1394/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libdc1394))
