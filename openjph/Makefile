include $(TOPDIR)/rules.mk

PKG_NAME:=openjph
PKG_VERSION:=0.31.0
PKG_RELEASE:=1

PKG_SOURCE:=OpenJPH-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/aous72/OpenJPH/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/OpenJPH-$(PKG_VERSION)
CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/openjph
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Open-source implementation of JPEG2000 Part-15 (or JPH or HTJ2K)
	DEPENDS:=+libstdcpp +libtiff
	URL:=https://github.com/aous72/OpenJPH
endef

define Package/openjph/description
	Open source implementation of High-throughput JPEG2000 (HTJ2K), also known as JPH, JPEG2000 Part 15, ISO/IEC 15444-15, and ITU-T T.814. Here, we are interested in implementing the HTJ2K only, supporting features that are defined in JPEG2000 Part 1 (for example, for wavelet transform, only reversible 5/3 and irreversible 9/7 are supported).
endef

CMAKE_OPTIONS += \
	-DOJPH_BUILD_TESTS=OFF \
	-DOJPH_ENABLE_TIFF_SUPPORT=ON \
	-DBUILD_SHARED_LIBS=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/openjph.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/openjph.pc
endef

define Package/openjph/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,openjph))
