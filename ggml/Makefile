include $(TOPDIR)/rules.mk

PKG_NAME:=ggml
PKG_VERSION:=0.9.4
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/ggml-org/ggml/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/ggml
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Tensor library for machine learning
	DEPENDS:=+libstdcpp +openblas +libgomp
	URL:=https://github.com/ggml-org/ggml
endef

define Package/ggml/description
	Tensor library for machine learning
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DGGML_BLAS=ON \
	-DGGML_BLAS_VENDOR=OpenBLAS

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/share/pkgconfig/ggml.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/share/pkgconfig/ggml.pc
endef

define Package/ggml/install
	#$(INSTALL_DIR) $(1)/usr/bin
	#$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,ggml))
