include $(TOPDIR)/rules.mk

PKG_NAME:=gemmlowp
PKG_VERSION:=2023-11-4
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/google/gemmlowp.git
PKG_SOURCE_VERSION:=16e8662c34917be0065110bfcd9cc27d30f52fdf
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR:=build
CMAKE_SOURCE_SUBDIR:=contrib

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/gemmlowp
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Low-precision matrix multiplication
	DEPENDS:=+libstdcpp
	URL:=https://github.com/google/gemmlowp
endef

define Package/gemmlowp/description
	This is not a full linear algebra library, only a GEMM library: it only does general matrix multiplication ("GEMM").
endef

CMAKE_OPTIONS += \
	-Wno-dev \
	-DBUILD_SHARED_LIBS=ON \
	-DBUILD_TESTING=OFF

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/gemmlowp \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{cmake,*.so*} \
	  $(1)/usr/lib/
endef

define Package/gemmlowp/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,gemmlowp))
