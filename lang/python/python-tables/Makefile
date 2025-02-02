include $(TOPDIR)/rules.mk

PKG_NAME:=python-tables
PKG_VERSION:=3.10.2
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

PYPI_NAME:=tables
PKG_HASH:=2544812a7186fadba831d6dd34eb49ccd788d6a83f4e4c2b431b835b6796c910

PKG_BUILD_DEPENDS:=numpy/host python-packaging/host python-py-cpuinfo/host python-cython/host python-blosc2/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-tables
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Hierarchical datasets for Python
  URL:=http://www.pytables.org/
  DEPENDS:=+python3 +python3-numpy +python3-numexpr +python3-packaging +python3-py-cpuinfo +python3-blosc2 +python3-typing-extensions +c-blosc +libbz2 +hdf5 +liblzo
endef

define Package/python3-tables/description
PyTables is a package for managing hierarchical datasets and designed to efficiently cope with extremely large amounts of data.
PyTables is built on top of the HDF5 library and the NumPy package and features an object-oriented interface that, combined with C-code generated from Cython sources, makes of it a fast, yet extremely easy to use tool for interactively save and retrieve large amounts of data.
endef

PYTHON3_PKG_SETUP_VARS += \
	HDF5_DIR="$(STAGING_DIR)/usr" \
	LZO_DIR="$(STAGING_DIR)/usr" \
	BZIP2_DIR="$(STAGING_DIR)/usr" \
	BLOSC_DIR="$(STAGING_DIR)/usr" \
	BLOSC2_DIR="$(STAGING_DIR)/usr"

$(eval $(call Py3Package,python3-tables))
$(eval $(call BuildPackage,python3-tables))
$(eval $(call BuildPackage,python3-tables-src))
