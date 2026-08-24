include $(TOPDIR)/rules.mk

PKG_NAME:=svt-av1
PKG_VERSION:=4.2.0
PKG_RELEASE:=1

PKG_SOURCE:=SVT-AV1-v$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://gitlab.com/AOMediaCodec/SVT-AV1/-/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause-Clear
PKG_LICENSE_FILES:=LICENSE-BSD2.md LICENSE.md

CMAKE_BINARY_SUBDIR := build
PKG_BUILD_DIR:=$(BUILD_DIR)/SVT-AV1-v$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/svt-av1
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Scalable Video Technology for AV1 (SVT-AV1 Encoder)
	DEPENDS:=+libstdcpp
	URL:=https://gitlab.com/AOMediaCodec/SVT-AV1
endef

define Package/svt-av1/description
	The Scalable Video Technology for AV1 (SVT-AV1 Encoder) is an AV1-compliant software encoder library.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DNATIVE=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/SvtAv1Enc.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/SvtAv1Enc.pc
endef

define Package/svt-av1/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,svt-av1))
