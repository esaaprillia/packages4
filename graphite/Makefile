include $(TOPDIR)/rules.mk

PKG_NAME:=graphite
PKG_VERSION:=1.3.15
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/silnrsi/graphite/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1-or-later OR MPL-1.1
PKG_LICENSE_FILES:=COPYING

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/graphite
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=reimplementation of the SIL Graphite text processing engine
	DEPENDS:=+libstdcpp
	URL:=https://graphite.sil.org/
endef

define Package/graphite/description
	Graphite is a system that can be used to create “smart fonts” capable of displaying writing systems with various complex behaviors.
endef

CMAKE_OPTIONS += \
	-DGRAPHITE2_COMPARE_RENDERER=OFF \
	-DGRAPHITE2_NFILEFACE=ON \
	-DGRAPHITE2_VM_TYPE="direct"

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/graphite2.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/graphite2.pc
endef

define Package/graphite/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,graphite))
