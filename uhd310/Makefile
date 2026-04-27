include $(TOPDIR)/rules.mk

PKG_NAME:=uhd
PKG_VERSION:=3.10.1.1
PKG_RELEASE:=1

#PKG_SOURCE:=release_003_010_001_001-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://github.com/EttusResearch/uhd/archive/
#PKG_HASH:=skip

PKG_SOURCE_URL:=https://github.com/EttusResearch/uhd.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=c705922a08e32c8b0ec7ef6af6137835f87b2f42
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=LICENSE.md

#CMAKE_BINARY_SUBDIR:=build
CMAKE_SOURCE_SUBDIR:=host

PKG_BUILD_DEPENDS:=python-mako/host python-requests/host
PYTHON3_PKG_BUILD:=0

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

define Package/uhd310
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=The USRP™ Hardware Driver Repository
	DEPENDS:=+libstdcpp +boost-filesystem +boost-program_options +boost-serialization +boost-thread +boost-test +libusb-1.0 +libpython3
	URL:=https://github.com/EttusResearch/uhd
endef

define Package/uhd310/description
	USRP Hardware Driver (UHD™) Software
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DNEON_SIMD_ENABLE=ON \
	-DUHD_VERSION="$(PKG_VERSION)" \
	-DPYTHON_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/$(PYTHON3)" \
	-DPython_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/$(PYTHON3)"

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/uhd.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/uhd.pc
endef

define Package/uhd310/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/uhd $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/uhd $(1)/usr/share/
	$(INSTALL_DIR) $(1)$(PYTHON3_PKG_DIR)
	$(CP) $(PKG_INSTALL_DIR)$(PYTHON3_PKG_DIR)/* $(1)$(PYTHON3_PKG_DIR)
endef

$(eval $(call BuildPackage,uhd310))
