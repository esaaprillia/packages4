include $(TOPDIR)/rules.mk

PKG_NAME:=python-bitarray
PKG_VERSION:=3.0.0
PKG_RELEASE:=1

PYPI_NAME:=bitarray
PKG_HASH:=a2083dc20f0d828a7cdf7a16b20dae56aab0f43dc4f347a3b3039f6577992b03

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-bitarray
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=efficient arrays of booleans for Python
  URL:=https://github.com/ilanschnell/bitarray
  DEPENDS:=+python3
endef

define Package/python3-bitarray/description
  This library provides an object type which efficiently represents an array of booleans. Bitarrays are sequence types and behave very much like usual lists. Eight bits are represented by one byte in a contiguous block of memory. The user can select between two representations: little-endian and big-endian. All functionality is implemented in C. Methods for accessing the machine representation are provided, including the ability to import and export buffers. This allows creating bitarrays that are mapped to other objects, including memory-mapped files.
endef

$(eval $(call Py3Package,python3-bitarray))
$(eval $(call BuildPackage,python3-bitarray))
$(eval $(call BuildPackage,python3-bitarray-src))
