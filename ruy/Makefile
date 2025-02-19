include $(TOPDIR)/rules.mk

PKG_NAME:=ruy
PKG_VERSION:=2024-12-20
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/google/ruy.git
PKG_SOURCE_VERSION:=83fd40d730feb0804fafbc2d8814bcc19a17b2e5
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/ruy
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=The ruy matrix multiplication library
	DEPENDS:=+cpuinfo
	URL:=https://github.com/google/ruy
endef

define Package/ruy/description
	ruy is a matrix multiplication library. Its focus is to cover the matrix multiplication needs of neural network inference engines. Its initial user has been TensorFlow Lite, where it is used by default on the ARM CPU architecture.
endef

CMAKE_OPTIONS += \
	-DCMAKE_POSITION_INDEPENDENT_CODE=ON \
	-DRUY_MINIMAL_BUILD=ON \
	-DRUY_ENABLE_INSTALL=ON \
	-DRUY_FIND_CPUINFO=ON

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/ruy \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{cmake,*.a*} \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,ruy))
