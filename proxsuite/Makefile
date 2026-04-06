include $(TOPDIR)/rules.mk

PKG_NAME:=proxsuite
PKG_VERSION:=0.7.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/Simple-Robotics/proxsuite/releases/download/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

PYTHON3_PKG_BUILD:=0
PKG_BUILD_DEPENDS:=eigen simde python3 python-nanobind/host

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

define Package/proxsuite
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=The Advanced Proximal Optimization Toolbox
	DEPENDS:=+libstdcpp
	URL:=https://github.com/Simple-Robotics/proxsuite
endef

define Package/proxsuite/description
	ProxSuite is a collection of open-source, numerically robust, precise, and efficient numerical solvers (e.g., LPs, QPs, etc.)
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DBUILD_TESTING:BOOL=OFF \
	-DINSTALL_DOCUMENTATION:BOOL=ON \
	-DBUILD_PYTHON_INTERFACE:BOOL=ON \
	-DPYTHON_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/$(PYTHON3)" \
	-DPython_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/$(PYTHON3)" \
	-DPYTHON_SITELIB="$(PKG_INSTALL_DIR)/$(PYTHON3_PKG_DIR)"

MAKE_FLAGS += $(PYTHON3_VARS)

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/proxsuite/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,proxsuite))
