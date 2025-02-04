#
# Copyright (C) 2013-2014 wrtnode.com
# Copyright (C) 2015-2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=opencv
PKG_VERSION:=4.11.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/opencv/opencv/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=openjpeg/host numpy/host

CMAKE_INSTALL:=1
CMAKE_BINARY_SUBDIR:=build
PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0
PYTHON3_PKG_BUILD:=0

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

define Package/opencv
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=OpenCV
  URL:=https://opencv.org/
  DEPENDS:=+libpthread +librt +libatomic +libstdcpp +zlib +libjpeg +libfreetype +libtiff +libpng +protobuf +libwebp +libgphoto2 +openjpeg
endef

define Package/python3-opencv
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python bindings for the OpenCV
  URL:=https://opencv.org/
  DEPENDS:=+python3 +python3-numpy +opencv
endef

define Package/opencv/Default/description
 OpenCV (Open Source Computer Vision Library) is an open source computer
 vision and machine learning software library. OpenCV was built to provide
 a common infrastructure for computer vision applications and to accelerate
 the use of machine perception in the commercial products. Being a
 BSD-licensed product, OpenCV makes it easy for businesses to utilize
 and modify the code.
endef

define Package/python3-opencv/description
  Open source computer vision and machine learning library (python modules)
endef

CMAKE_OPTIONS += \
	-DBUILD_ZLIB=OFF \
	-DBUILD_TIFF=OFF \
	-DBUILD_OPENJPEG=OFF \
	-DBUILD_JASPER=OFF \
	-DBUILD_JPEG=OFF \
	-DBUILD_PNG=OFF \
	-DBUILD_OPENEXR=OFF \
	-DBUILD_WEBP=OFF \
	-DBUILD_TBB=OFF \
	-DBUILD_IPP_IW=OFF \
	-DBUILD_ITT=OFF \
	-DBUILD_JAVA=OFF \
	-DBUILD_TESTS=OFF \
	-DBUILD_PERF_TESTS=OFF \
	-DBUILD_EXAMPLES=OFF \
	-DWITH_TIFF=ON \
	-DWITH_OPENJPEG=ON \
	-DWITH_JASPER=OFF \
	-DWITH_JPEG=ON \
	-DWITH_PNG=ON \
	-DWITH_OPENEXR=OFF \
	-DWITH_WEBP=ON \
	-DWITH_TBB=OFF \
	-DWITH_IPP=OFF \
	-DWITH_ITT=OFF \
	-DWITH_GTK=OFF \
	-DWITH_ADE=OFF \
	-DWITH_opencv_gapi=OFF \
	-DWITH_PROTOBUF=ON \
	-DWITH_VA=OFF \
	-DWITH_VA_INTEL=OFF \
	-DWITH_VTK=OFF \
	-DWITH_GPHOTO2=ON \
	-DINSTALL_C_EXAMPLES=OFF \
	-DINSTALL_PYTHON_EXAMPLES=OFF \
	-DOPENCV_SKIP_PYTHON_LOADER=ON \
	-DOPENCV_GENERATE_PKGCONFIG=ON \
	-DOPENCV_ENABLE_NONFREE=OFF \
	-DOPENCV_GENERATE_SETUPVARS=OFF \
	-DBUILD_opencv_python3=1 \
	-DPYTHON3_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/$(PYTHON3)" \
	-DPYTHON3_INCLUDE_DIR="$(STAGING_DIR)/usr/include/python$(PYTHON3_VERSION)" \
	-DPYTHON3_LIBRARIES="$(STAGING_DIR)/usr/lib/python$(PYTHON3_VERSION)/libpython$(PYTHON3_VERSION)" \
	-DPYTHON3_NUMPY_INCLUDE_DIRS="$(STAGING_DIR)/usr/lib/python$(PYTHON3_VERSION)/site-packages/numpy/_core/include" \
	-DPYTHON3_PACKAGES_PATH="$(PYTHON3_PKG_DIR)"

PYTHON3_PKG_BUILD_PATH:=modules/python/package
PYTHON3_PKG_WHEEL_NAME:=opencv
PYTHON3_PKG_WHEEL_VERSION:=4.11.0

define Build/Compile
	$(call Build/Compile/Default)
	$(call Py3Build/Compile)
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/opencv4 $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libopencv* $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/cmake $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/opencv4.pc $(1)/usr/lib/pkgconfig/
endef

define Build/Install
	$(call Py3Build/Install)
endef

define Package/opencv/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/opencv* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libopencv* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/opencv4 $(1)/usr/share/
endef

$(eval $(call BuildPackage,opencv))
$(eval $(call Py3Package,python3-opencv))
$(eval $(call BuildPackage,python3-opencv))
$(eval $(call BuildPackage,python3-opencv-src))
