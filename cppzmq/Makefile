include $(TOPDIR)/rules.mk

PKG_NAME:=cppzmq
PKG_VERSION:=4.11.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/zeromq/cppzmq/archive/v$(PKG_NAME)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR:=build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/cppzmq
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Header-only C++ binding for libzmq
	DEPENDS:=+libzmq-nc
	URL:=https://github.com/zeromq/cppzmq
endef

define Package/cppzmq/description
cppzmq is a C++ binding for libzmq.
endef

CMAKE_OPTIONS += \
	-DCPPZMQ_BUILD_TESTS=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/cppzmq.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/cppzmq.pc
endef

$(eval $(call BuildPackage,cppzmq))
