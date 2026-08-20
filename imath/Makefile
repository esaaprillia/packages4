include $(TOPDIR)/rules.mk

PKG_NAME:=imath
PKG_VERSION:=3.2.3
PKG_RELEASE:=1

PKG_SOURCE:=Imath-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/AcademySoftwareFoundation/Imath/releases/download/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DIR:=$(BUILD_DIR)/Imath-$(PKG_VERSION)
CMAKE_BINARY_SUBDIR := build

PKG_BUILD_DEPENDS:=numpy/host
PYTHON3_PKG_BUILD:=0

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

define Package/imath
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Imath is a C++ and python library of 2D and 3D vector, matrix, and math operations for computer graphics
	DEPENDS:=+libstdcpp +boost-python3
	URL:=https://imath.readthedocs.io/
endef

define Package/imath/description
	Imath is a basic, light-weight, and efficient C++ representation of 2D and 3D vectors and matrices and other simple but useful mathematical objects, functions, and data types common in computer graphics applications, including the “half” 16-bit floating-point type.
endef

define Package/python3-imath
	SUBMENU:=Python
	SECTION:=lang
	CATEGORY:=Languages
	TITLE:=Imath Python library
	DEPENDS:=+python3-light +python3-numpy +imath
	URL:=https://imath.readthedocs.io/
endef

define Package/python3-imath/description
	Imath Python library
endef

CMAKE_OPTIONS += \
	-DPYTHON=ON \
	-DBUILD_SHARED_LIBS=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/Imath.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/Imath.pc
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/PyImath.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/PyImath.pc
endef

define Package/imath/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,imath))
$(eval $(call Py3Package,python3-imath))
$(eval $(call BuildPackage,python3-imath))
$(eval $(call BuildPackage,python3-imath-src))
