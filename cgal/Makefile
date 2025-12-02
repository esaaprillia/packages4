include $(TOPDIR)/rules.mk

PKG_NAME:=cgal
PKG_VERSION:=6.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/CGAL/cgal/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0-or-later LGPL-3.0-or-later
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=boost eigen gmp mpfr
HOST_BUILD_DEPENDS:=boost/host eigen/host gmp/host mpfr/host

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/cgal
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=The public CGAL repository, see the README below
	DEPENDS:=
	URL:=https://github.com/CGAL/cgal
endef

define Package/cgal/description
	The Computational Geometry Algorithms Library (CGAL) is a C++ library that aims to provide easy access to efficient and reliable algorithms in computational geometry.
endef

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,cgal))
