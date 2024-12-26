include $(TOPDIR)/rules.mk

PKG_NAME:=python-swig
PKG_VERSION:=4.3.0
PKG_RELEASE:=1

PYPI_NAME:=swig
PKG_HASH:=b9faa1925657ebc5236f6d7b93203c461eb109927dc67044e82639baf99535bd

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0 GPL-3.0 License
PKG_LICENSE_FILES:=LICENSE LICENSE-GPL LICENSE-SWIG LICENSE-UNIVERSITIES

HOST_BUILD_DEPENDS:=python-scikit-build-core/host pcre2/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-swig
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=pip install swig. SWIG Python wheel for PyPI.
  URL:=https://github.com/nightlark/swig-pypi
  DEPENDS:=+python3
endef

define Package/python3-swig/description
A project that packages SWIG as a Python package, enabling swig to be installed from PyPI
endef

PYTHON3_HOST_BUILD_CONFIG_SETTINGS += \
	cmake.args=-Wno-dev;-DPCRE2_LIBRARY="$(STAGING_DIR_HOSTPKG)/lib";-DPCRE2_INCLUDE_DIR="$(STAGING_DIR_HOSTPKG)/include"

$(eval $(call Py3Package,python3-swig))
$(eval $(call BuildPackage,python3-swig))
$(eval $(call BuildPackage,python3-swig-src))
$(eval $(call HostBuild))
