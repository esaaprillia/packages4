include $(TOPDIR)/rules.mk

PKG_NAME:=python-blosc
PKG_VERSION:=1.11.2
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE.txt

PYPI_NAME:=blosc
PKG_HASH:=ac5e7c1bfc1c7232b900be94cddb5ffcf9ea49f313c8ae98a7ca0dd87b872bf4

HOST_BUILD_DEPENDS:=python-scikit-build/host python-py-cpuinfo/host numpy/host c-blosc/host
PKG_BUILD_DEPENDS:=python-scikit-build/host python-py-cpuinfo/host numpy/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-blosc
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Blosc data compressor
  URL:=https://www.blosc.org/python-blosc/python-blosc.html
  DEPENDS:=+python3 +python3-numpy +c-blosc
endef

define Package/python3-blosc/description
Blosc (https://blosc.org) is a high performance compressor optimized for binary data. It has been designed to transmit data to the processor cache faster than the traditional, non-compressed, direct memory fetch approach via a memcpy() OS call.
Blosc works well for compressing numerical arrays that contains data with relatively low entropy, like sparse data, time series, grids with regular-spaced values, etc.
python-blosc a Python package that wraps Blosc. python-blosc supports Python 3.9 or higher versions.
endef

PYTHON3_HOST_BUILD_CONFIG_SETTINGS += \
	--config-settings=cmake.args=-DUSE_SYSTEM_BLOSC=ON;-DDEACTIVATE_SNAPPY=OFF;-DDEACTIVATE_AVX2=ON

PYTHON3_PKG_SETUP_VARS +=CMAKE_ARGS="-DUSE_SYSTEM_BLOSC=ON -DDEACTIVATE_SNAPPY=OFF -DDEACTIVATE_AVX2=ON"

$(eval $(call Py3Package,python3-blosc))
$(eval $(call BuildPackage,python3-blosc))
$(eval $(call BuildPackage,python3-blosc-src))
$(eval $(call HostBuild))
