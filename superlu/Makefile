include $(TOPDIR)/rules.mk

PKG_NAME:=superlu
PKG_VERSION:=7.0.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/xiaoyeli/superlu/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=License.txt

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/superlu
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Supernodal sparse direct solver.
	DEPENDS:=+libstdcpp +openblas
	URL:=https://portal.nersc.gov/project/sparse/superlu/
endef

define Package/superlu/description
	SuperLU contains a set of subroutines to solve a sparse linear system A*X=B.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-Denable_internal_blaslib:BOOL=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/superlu.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/superlu.pc
endef

define Package/superlu/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,superlu))
