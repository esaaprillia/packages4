include $(TOPDIR)/rules.mk

PKG_NAME:=spdlog
PKG_VERSION:=1.17.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/gabime/spdlog/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/spdlog
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Fast C++ logging library.
	DEPENDS:=+libfmt
	URL:=https://github.com/gabime/spdlog
endef

define Package/spdlog/description
	Fast C++ logging library
endef

CMAKE_OPTIONS += \
	-DSPDLOG_BUILD_BENCH=OFF \
	-DSPDLOG_BUILD_TESTS=OFF \
	-DSPDLOG_SANITIZE_ADDRESS=OFF \
	-DSPDLOG_FMT_EXTERNAL=ON \
	-DSPDLOG_BUILD_SHARED=ON \
	-DSPDLOG_BUILD_EXAMPLE=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/spdlog.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/spdlog.pc
endef

define Package/spdlog/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/brotli $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,spdlog))
