include $(TOPDIR)/rules.mk

PKG_NAME:=python-isal
PKG_VERSION:=1.7.2
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=isal
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-poetry-core/host python-versioningit/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

PYTHON3_PKG_SETUP_VARS:= \
	PYTHON_ISAL_LINK_DYNAMIC=true

define Package/python3-isal
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Faster zlib and gzip compatible compression and decompression by providing python bindings for the ISA-L library.
  URL:=https://github.com/pycompression/python-isal
  DEPENDS:=+python3 +isa-l
endef

define Package/python3-isal/description
Faster zlib and gzip compatible compression and decompression by providing Python bindings for the ISA-L library.

This package provides Python bindings for the ISA-L library. The Intel(R) Intelligent Storage Acceleration Library (ISA-L) implements several key algorithms in assembly language. This includes a variety of functions to provide zlib/gzip-compatible compression.

python-isal provides the bindings by offering four modules:

• isal_zlib: A drop-in replacement for the zlib module that uses ISA-L to accelerate its performance.

• igzip: A drop-in replacement for the gzip module that uses isal_zlib instead of zlib to perform its compression and checksum tasks, which improves performance.

• igzip_threaded offers an open function which returns buffered read or write streams that can be used to read and write large files while escaping the GIL using one or multiple threads. This functionality only works for streaming, seeking is not supported.

• igzip_lib: Provides compression functions which have full access to the API of ISA-L’s compression functions.

isal_zlib and igzip are almost fully compatible with zlib and gzip from the Python standard library. There are some minor differences see: differences-with-zlib-and-gzip-modules.
endef

$(eval $(call Py3Package,python3-isal))
$(eval $(call BuildPackage,python3-isal))
$(eval $(call BuildPackage,python3-isal-src))
