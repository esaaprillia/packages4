include $(TOPDIR)/rules.mk

PKG_NAME:=xerces-c
PKG_VERSION:=3.3.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/apache/xerces-c/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/xerces-c
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Apache Xerces-C validating XML parser
	DEPENDS:=+libstdcpp +libcurl +icu
	URL:=https://xerces.apache.org/
endef

define Package/xerces-c/description
	See the doc/html/index.html for the description of the Xerces-C++ project and other documentation.
endef

CMAKE_OPTIONS += \
	-Dnetwork-accessor=curl \
	-Dmessage-loader=icu \
	-Dtranscoder=icu

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/xerces-c.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/xerces-c.pc
endef

define Package/xerces-c/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,xerces-c))
