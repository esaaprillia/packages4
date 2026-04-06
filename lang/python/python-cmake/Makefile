include $(TOPDIR)/rules.mk

PKG_NAME:=python-cmake
PKG_VERSION:=4.3.1
PKG_RELEASE:=1

PYPI_NAME:=cmake
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE_Apache_20 LICENSE_BSD_3

HOST_BUILD_DEPENDS:=python-scikit-build-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-cmake
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=CMake is an open-source, cross-platform family of tools designed to build, test and package software
  URL:=https://github.com/scikit-build/cmake-python-distributions
  DEPENDS:=+python3
endef

define Package/python3-cmake/description
CMake is used to control the software compilation process using simple platform and compiler independent configuration files, and generate native makefiles and workspaces that can be used in the compiler environment of your choice.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-cmake))
$(eval $(call BuildPackage,python3-cmake))
$(eval $(call BuildPackage,python3-cmake-src))
