include $(TOPDIR)/rules.mk

PKG_NAME:=python-zstd
PKG_VERSION:=1.5.5.1
PKG_RELEASE:=1

PYPI_NAME:=zstd
PKG_HASH:=1ef980abf0e1e072b028d2d76ef95b476632651c96225cf30b619c6eef625672

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-zstd
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=ZSTD Bindings for Python
  URL:=https://github.com/sergey-dryabzhinsky/python-zstd
  DEPENDS:=+python3-light +libzstd
endef

define Package/python3-zstd/description
Simple python bindings to Yann Collet ZSTD compression library.
Zstd, short for Zstandard, is a new lossless compression algorithm,
which provides both good compression ratio and speed for your standard compression needs. “Standard” translates into everyday situations which neither look for highest possible ratio (which LZMA and ZPAQ cover) nor extreme speeds (which LZ4 covers).
It is provided as a BSD-license package, hosted on GitHub.
endef

$(eval $(call Py3Package,python3-zstd))
$(eval $(call BuildPackage,python3-zstd))
$(eval $(call BuildPackage,python3-zstd-src))
