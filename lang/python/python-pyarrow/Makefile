include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyarrow
PKG_VERSION:=24.0.0
PKG_RELEASE:=1

PYPI_NAME:=pyarrow
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host numpy/host python-setuptools-scm/host python-cffi/host python-pandas/host python-scikit-build-core/host python-libcst/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

PYTHON3_PKG_SETUP_VARS += PYARROW_CMAKE_OPTIONS="-DARROW_SIMD_LEVEL=NONE -DARROW_RUNTIME_SIMD_LEVEL=MAX"

define Package/python3-pyarrow
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python library for Apache Arrow
  URL:=https://arrow.apache.org/
  DEPENDS:=+python3 +python3-numpy +python3-cffi +python3-fsspec +python3-pandas +apache-arrow
endef

define Package/python3-pyarrow/description
This library provides a Python API for functionality provided by the Arrow C++ libraries, along with tools for Arrow integration and interoperability with pandas, NumPy, and other software in the Python ecosystem.
endef

$(eval $(call Py3Package,python3-pyarrow))
$(eval $(call BuildPackage,python3-pyarrow))
$(eval $(call BuildPackage,python3-pyarrow-src))
