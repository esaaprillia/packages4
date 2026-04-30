include $(TOPDIR)/rules.mk

PKG_NAME:=libdwarf
PKG_VERSION:=2.3.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://www.prevanders.net/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause BSD-3-Clause GPL-2.0-only LGPL-2.1-only LicenseRef-libdwarf-public-domain
PKG_LICENSE_FILES:=COPYING DWARFDUMPCOPYRIGHT LIBDWARFCOPYRIGHT

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/libdwarf
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Contains source for libdwarf, a library for reading DWARF2 and later DWARF.
	DEPENDS:=+libstdcpp +libelf +libzstd +zlib
	URL:=https://www.prevanders.net/dwarf.html
endef

define Package/libdwarf/description
	Libdwarf has been focused for years on both providing access to DWARF2 through DWARF5 data in a portable way while also detecting and reporting if the DWARF is corrupted and avoiding run-time crashes or memory leakage regardless how corrupted the DWARF being read may be.
endef

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libdwarf.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libdwarf.pc
endef

define Package/libdwarf/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libdwarf))
