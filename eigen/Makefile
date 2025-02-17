include $(TOPDIR)/rules.mk

PKG_NAME:=eigen
PKG_VERSION:=3.4.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://gitlab.com/libeigen/eigen/-/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MPL-2.0
PKG_LICENSE_FILES:=COPYING.MPL2

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/eigen
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Eigen is a C++ template library for linear algebra
	DEPENDS:=
	URL:=https://eigen.tuxfamily.org
endef

define Package/eigen/description
	Eigen is a C++ template library for linear algebra: matrices, vectors, numerical solvers, and related algorithms.
endef

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/eigen3 \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/{pkgconfig,eigen3} \
	  $(1)/usr/share/
endef

$(eval $(call BuildPackage,eigen))
$(eval $(call HostBuild))
