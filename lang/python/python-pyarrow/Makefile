include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyarrow
PKG_VERSION:=22.0.0
PKG_RELEASE:=1

PYPI_NAME:=pyarrow
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

#CMAKE_BINARY_SUBDIR := build

PKG_BUILD_DEPENDS:=python-cython/host numpy/host python-setuptools-scm/host python-cffi/host python-pandas/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include ../python3-package.mk

define Package/python3-pyarrow
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python library for Apache Arrow
  URL:=https://arrow.apache.org/
  DEPENDS:=+python3 +python3-numpy +python3-cffi +python3-fsspec +python3-pandas
endef

define Package/python3-pyarrow/description
This library provides a Python API for functionality provided by the Arrow C++ libraries, along with tools for Arrow integration and interoperability with pandas, NumPy, and other software in the Python ecosystem.
endef

CMAKE_OPTIONS += \
	-DPython3="$(STAGING_DIR_HOSTPKG)/bin/$(PYTHON3)" \
	-DPython3_NumPy_INCLUDE_DIRS="$(PYTHON3_PKG_DIR)/numpy/_core/include"

$(eval $(call Py3Package,python3-pyarrow))
$(eval $(call BuildPackage,python3-pyarrow))
$(eval $(call BuildPackage,python3-pyarrow-src))
