include $(TOPDIR)/rules.mk

PKG_NAME:=python-brotli
PKG_VERSION:=1.2.0
PKG_RELEASE:=1

PYPI_NAME:=brotli
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-pkgconfig/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

PYTHON3_PKG_SETUP_VARS:= \
	USE_SYSTEM_BROTLI=1

define Package/python3-brotli
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python bindings for the Brotli compression library
  URL:=https://github.com/google/brotli
  DEPENDS:=+python3-light +brotli +libstdcpp
endef

define Package/python3-brotli/description
  Brotli is a generic-purpose lossless compression algorithm that compresses data using a combination of a modern variant of the LZ77 algorithm,
  Huffman coding and 2nd order context modeling, with a compression ratio comparable to the best currently available general-purpose compression methods.
  It is similar in speed with deflate but offers more dense compression.
endef

$(eval $(call Py3Package,python3-brotli))
$(eval $(call BuildPackage,python3-brotli))
$(eval $(call BuildPackage,python3-brotli-src))
