include $(TOPDIR)/rules.mk

PKG_NAME:=vtk
PKG_VERSION:=9.6.1
PKG_RELEASE:=1

PKG_SOURCE:=VTK-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://vtk.org/files/release/9.5/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=Copyright.txt

PKG_BUILD_DIR:=$(BUILD_DIR)/VTK-$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/VTK-$(PKG_VERSION)

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_DEPENDS:=vtk/host
PKG_BUILD_PARALLEL:=1
PYTHON3_PKG_BUILD:=0

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

define Package/vtk
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A software system for 3D computer graphics, image processing and visualization
	DEPENDS:=+hdf5 +proj +netcdf-c +python3
	URL:=https://vtk.org/
endef

define Package/vtk/description
	The Visualization Toolkit (VTK) is open source software for manipulating and displaying scientific data. It comes with state-of-the-art tools for 3D rendering, a suite of widgets for 3D interaction, and extensive 2D plotting capability.
endef

CMAKE_HOST_OPTIONS += \
	-DVTK_BUILD_COMPILE_TOOLS_ONLY=ON \
	-DVTK_BUILD_TESTING=OFF

CMAKE_OPTIONS += \
    -DBUILD_SHARED_LIBS=ON \
    -DVTKCompileTools_DIR=$(STAGING_DIR_HOSTPKG) \
    -DVTK_PYTHON_VERSION=$(PYTHON3_VERSION_MAJOR) \
    -DVTK_WRAP_PYTHON=ON \
    -DVTK_MODULE_USE_EXTERNAL_VTK_hdf5=ON \
    -DVTK_MODULE_USE_EXTERNAL_VTK_libproj=ON \
    -DVTK_MODULE_USE_EXTERNAL_VTK_netcdf=ON \
    -DVTK_BUILD_TESTING=OFF \
    -DVTK_REQUIRE_LARGE_FILE_SUPPORT_EXITCODE=0

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/vtk/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/* $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,vtk))
