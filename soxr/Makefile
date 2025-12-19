include $(TOPDIR)/rules.mk

PKG_NAME:=soxr
PKG_VERSION:=0.1.3
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/chirlu/soxr/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=COPYING.LGPL LICENSE.txt

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/soxr
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=The SoX resampler library
	DEPENDS:=+libstdcpp +libgomp
	URL:=https://github.com/chirlu/soxr
endef

define Package/soxr/description
	The SoX Resampler library `libsoxr' performs one-dimensional sample-rate conversion -- it may be used, for example, to resample PCM-encoded audio.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=True \
	-DBUILD_TESTS=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$(STAGING_DIR)/usr/include,g' $(1)/usr/lib/pkgconfig/soxr*.pc
	$(SED) 's,/usr/lib,$(STAGING_DIR)/usr/lib,g' $(1)/usr/lib/pkgconfig/soxr*.pc
endef

define Package/soxr/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,soxr))
