include $(TOPDIR)/rules.mk

PKG_NAME:=python-blosc2
PKG_VERSION:=2.7.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE.txt

PYPI_NAME:=blosc2
PKG_HASH:=34db4d41543b16e894d507d6c7d10a9a67c9dd420ff40b072f7c39185cbb8fe8

HOST_BUILD_DEPENDS:=python-cython/host python-scikit-build/host numpy/host c-blosc2/host
PKG_BUILD_DEPENDS:=python-cython/host python-scikit-build/host numpy/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-blosc2
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python wrapper for the C-Blosc2 library
  URL:=https://github.com/Blosc/python-blosc2
  DEPENDS:=+python3 +python3-numpy +python3-ndindex +python3-msgpack +python3-numexpr +python3-py-cpuinfo +c-blosc2
endef

define Package/python3-blosc2/description
C-Blosc2 is the new major version of C-Blosc, and is backward compatible with both the C-Blosc1 API and its in-memory format. Python-Blosc2 is a Python package that wraps C-Blosc2, the newest version of the Blosc compressor.
Currently Python-Blosc2 already reproduces the API of Python-Blosc, so it can be used as a drop-in replacement. However, there are a few exceptions for a full compatibility.
In addition, Python-Blosc2 aims to leverage the full C-Blosc2 functionality to support super-chunks (SChunk), multi-dimensional arrays (NDArray), metadata, serialization and other bells and whistles introduced in C-Blosc2.
Note: Python-Blosc2 is meant to be backward compatible with Python-Blosc data. That means that it can read data generated with Python-Blosc, but the opposite is not true (i.e. there is no forward compatibility).
endef

PYTHON3_HOST_BUILD_CONFIG_SETTINGS +=cmake_args=-DUSE_SYSTEM_BLOSC2=ON
PYTHON3_PKG_BUILD_CONFIG_SETTINGS +=cmake_args=-DUSE_SYSTEM_BLOSC2=ON

$(eval $(call Py3Package,python3-blosc2))
$(eval $(call BuildPackage,python3-blosc2))
$(eval $(call BuildPackage,python3-blosc2-src))
$(eval $(call HostBuild))
