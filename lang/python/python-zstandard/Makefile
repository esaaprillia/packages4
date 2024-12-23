include $(TOPDIR)/rules.mk

PKG_NAME:=python-zstandard
PKG_VERSION:=0.23.0
PKG_RELEASE:=1

PYPI_NAME:=zstandard
PKG_HASH:=b2d8c62d08e7255f68f7a740bae85b3c9b8e5466baa9cbf7f57f1cde0ac6bc09

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:= LICENSE

PKG_BUILD_DEPENDS:=python-cffi/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-zstandard
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Zstandard bindings for Python
  URL:=https://github.com/indygreg/python-zstandard
  DEPENDS:=+python3-light +python3-cffi
endef

define Package/python3-zstandard/description
This project provides Python bindings for interfacing with the Zstandard compression library. A C extension and CFFI interface are provided.
endef

$(eval $(call Py3Package,python3-zstandard))
$(eval $(call BuildPackage,python3-zstandard))
$(eval $(call BuildPackage,python3-zstandard-src))
