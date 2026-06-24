include $(TOPDIR)/rules.mk

PKG_NAME:=tclap
PKG_VERSION:=1.2.5
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://sourceforge.net/projects/tclap/files/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_INSTALL:=1
PKG_FIXUP:=autoreconf
#CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
#include $(INCLUDE_DIR)/cmake.mk

define Package/tclap
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Templatized C++ Command Line Parser Library (v1.4)
	DEPENDS:=
	URL:=https://sourceforge.net/projects/tclap
endef

define Package/tclap/description
	TCLAP is a small, flexible library that provides a simple interface for defining and accessing command line arguments. It was initially inspired by the user friendly CLAP library.
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/tclap $(1)/usr/include/
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/tclap.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/tclap.pc
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,tclap))
