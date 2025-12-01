include $(TOPDIR)/rules.mk

PKG_NAME:=librttopo
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://gitea.osgeo.org/rttopo/librttopo.git
PKG_SOURCE_VERSION:=98a8bdd0b2d13f6b685d0658b4bce15d46606a1a
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0-or-later
PKG_LICENSE_FILES:=COPYING

PKG_INSTALL:=1
PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk

define Package/librttopo
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=RT Topology Library
	DEPENDS:=+libstdcpp +geos
	URL:=https://gitea.osgeo.org/rttopo/librttopo
endef

define Package/librttopo/description
	The RT Topology Library exposes an API to create and manage standard (ISO 13249 aka SQL/MM) topologies using user-provided [data stores] (doc/DATASTORES.md) and released under the GNU GPL license (version 2 or later).
endef

CONFIGURE_ARGS += \
	--prefix=/usr

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include 
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/rttopo.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/rttopo.pc
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/rttopo.pc
endef

define Package/librttopo/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,librttopo))
