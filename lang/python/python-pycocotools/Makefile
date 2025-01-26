include $(TOPDIR)/rules.mk

PKG_NAME:=python-pycocotools
PKG_VERSION:=2.0.8
PKG_RELEASE:=1

PYPI_NAME:=pycocotools
PKG_HASH:=8f2bcedb786ba26c367a3680f9c4eb5b2ad9dccb2b34eaeb205e0a021e1dfb8d

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=FreeBSD
PKG_LICENSE_FILES:=license.txt

PKG_BUILD_DEPENDS:=python-cython/host numpy/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pycocotools
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Official APIs for the MS-COCO dataset
  URL:=https://github.com/ppwwyyxx/cocoapi
  DEPENDS:=+python3 +python3-matplotlib +python3-numpy
endef

define Package/python3-pycocotools/description
This is a fork of the original cocoapi, with bug fixes and packaging improvements.

This is also the "official" source of the pypi package pycocotools, available for download at pypi.

Changes in this fork include:

• Add CircleCI tests
• Support pip-installation correctly
• Support windows
• Don't import matplotlib unless needed
• Close file handle after openning
• Fix a small bug in rleToBbox
• Fix a segfault in RLE decoding
• Fix deprecated usage of other libraries
For compatibility, we will not make any API changes or non-bug behavior changes to the existing APIs of the official cocoapi.
endef

$(eval $(call Py3Package,python3-pycocotools))
$(eval $(call BuildPackage,python3-pycocotools))
$(eval $(call BuildPackage,python3-pycocotools-src))
