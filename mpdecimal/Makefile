include $(TOPDIR)/rules.mk

PKG_NAME:=mpdecimal
PKG_VERSION:=4.0.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://www.bytereef.org/software/mpdecimal/releases/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=COPYRIGHT.txt

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk

define Package/mpdecimal
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=complete implementation of the General Decimal Arithmetic Specification
	DEPENDS:=
	URL:=https://www.bytereef.org/mpdecimal/index.html
endef

define Package/mpdecimal/description
	Package for correctly-rounded arbitrary precision decimal floating point arithmetic
endef

CONFIGURE_ARGS += \
	--prefix=/usr \
	--disable-static \
	--disable-doc

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) \
		LDXXFLAGS="$(TARGET_LDFLAGS)" \
		LDXX="$(TARGET_CXX)" \
		LD="$(TARGET_CC)"
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/{decimal.hh,mpdecimal.h} $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/{libmpdec++.pc,libmpdec.pc} $(1)/usr/lib/pkgconfig/
endef

define Package/mpdecimal/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,mpdecimal))
