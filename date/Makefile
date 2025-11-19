include $(TOPDIR)/rules.mk

PKG_NAME:=date
PKG_VERSION:=3.0.4
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/HowardHinnant/date/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/date
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Date
	DEPENDS:=+libstdcpp
	URL:=https://github.com/HowardHinnant/date
endef

define Package/date/description
	A date and time library based on the C++11/14/17 <chrono> header
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=true \
	-DBUILD_TZ_LIB=true \
	-DUSE_SYSTEM_TZ_DB=true \
	-DENABLE_DATE_TESTING=true \
	-Wno-dev

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/date.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/date.pc
endef

define Package/date/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,date))
