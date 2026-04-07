include $(TOPDIR)/rules.mk

PKG_NAME:=python-proxsuite
PKG_VERSION:=0.7.2
PKG_RELEASE:=1

PYPI_NAME:=proxsuite
PKG_SOURCE_URL:=https://github.com/Simple-Robotics/proxsuite/releases/download/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

PYTHON3_PKG_BUILD:=0
PKG_BUILD_DEPENDS:=eigen simde python-nanobind/host

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../meson/cmake.mk
include ../python3-package.mk

define Package/python3-proxsuite
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Quadratic Programming Solver for Robotics and beyond.
  URL:=https://github.com/Simple-Robotics/proxsuite
  DEPENDS:= \
	+python3
endef

define Package/python3-proxsuite/description
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

define Build/Install
	$(call Build/Install/Default)
	$(CP) $(PKG_INSTALL_DIR)/$(PKG_INSTALL_DIR)/$(PYTHON3_PKG_DIR)/proxsuite $(PKG_INSTALL_DIR)/$(PYTHON3_PKG_DIR)
endef

$(eval $(call Py3Package,python3-proxsuite))
$(eval $(call BuildPackage,python3-proxsuite))
$(eval $(call BuildPackage,python3-proxsuite-src))
