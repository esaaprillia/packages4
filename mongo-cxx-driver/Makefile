include $(TOPDIR)/rules.mk

PKG_NAME:=mongo-cxx-driver
PKG_VERSION:=3.11.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-r$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/mongodb/mongo-cxx-driver/releases/download/r$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/mongo-cxx-driver-r$(PKG_VERSION)

CMAKE_BINARY_SUBDIR:=build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/mongo-cxx-driver
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=C++ Driver for MongoDB
	DEPENDS:=+mongo-c-driver
	URL:=https://github.com/mongodb/mongo-cxx-driver
endef

define Package/mongo-cxx-driver/description
	MongoDB server version compatibility per driver version is documented in the MongoDB Manual.
endef

CMAKE_OPTIONS += \
	-DENABLE_TESTS=OFF \
	-DENABLE_BSONCXX_POLY_USE_IMPLS=ON \
	-DCMAKE_POLICY_VERSION_MINIMUM=3.10

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/mongo-cxx-driver/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,mongo-cxx-driver))
