include $(TOPDIR)/rules.mk

PKG_NAME:=gsoap
PKG_VERSION:=2.8.139
PKG_RELEASE:=1

PKG_SOURCE:=gsoap_$(PKG_VERSION).zip
PKG_SOURCE_URL:=https://sourceforge.net/projects/gsoap2/files/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0-or-later gSOAP-1.3b
PKG_LICENSE_FILES:=LICENSE.txt license.pdf

PKG_BUILD_DIR:=$(BUILD_DIR)/gsoap-2.8
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/gsoap-2.8

PKG_BUILD_DEPENDS:=gsoap/host
PKG_BUILD_PARALLEL:=1
PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk

define Build/Prepare
	$(call Build/Prepare/Default)
	$(SED) 's|SOAP=$(top_builddir)/gsoap/src/soapcpp2|SOAP=$(STAGING_DIR_HOSTPKG)/bin/soapcpp2|g' $(PKG_BUILD_DIR)/gsoap/wsdl/Makefile.in
	$(SED) 's|SOAP=$(top_builddir)/gsoap/src/soapcpp2|SOAP=$(STAGING_DIR_HOSTPKG)/bin/soapcpp2|g' $(PKG_BUILD_DIR)/gsoap/wsdl/Makefile.am
endef

define Package/gsoap
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Development toolkit for Web Services and XML data bindings for C & C++
	DEPENDS:=+libopenssl +zlib
	URL:=https://sourceforge.net/projects/gsoap2
endef

define Package/gsoap/description
The gSOAP toolkit is an extensive suite of portable C and C++ software to develop XML Web services with powerful type-safe XML data bindings.
endef

CONFIGURE_ARGS += \
	--prefix=/usr \
	--mandir=/usr/share/man \
	--infodir=/usr/share/info \
	--exec-prefix=/usr \
	--enable-ipv6 \
	--enable-c-locale \
	--disable-static

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) \
		DESTDIR="$(PKG_INSTALL_DIR)" \
		all install
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/gsoap*.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/gsoap*.pc
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/gsoap*.pc
endef

define Package/gsoap/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/gsoap $(1)/usr/share/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,gsoap))
