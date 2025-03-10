include $(TOPDIR)/rules.mk

PKG_NAME:=tzdb
PKG_VERSION:=2025a
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.lz
PKG_SOURCE_URL:=https://data.iana.org/time-zones/releases/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Public Domain
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/tzdb
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Time Zone Database
	DEPENDS:=
	URL:=https://www.iana.org/time-zones
endef

define Package/tzdb/description
	The Time Zone Database (often called tz or zoneinfo) contains code and data that represent the history of local time for many representative locations around the globe.
	It is updated periodically to reflect changes made by political bodies to time zone boundaries, UTC offsets, and daylight-saving rules.
endef

define Package/tzdb/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/zoneinfo* \
	  $(1)/usr/share/
endef

$(eval $(call BuildPackage,tzdb))
