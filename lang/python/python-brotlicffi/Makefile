include $(TOPDIR)/rules.mk

PKG_NAME:=python-brotlicffi
PKG_VERSION:=1.2.0.1
PKG_RELEASE:=1

PYPI_NAME:=brotlicffi
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cffi/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

PYTHON3_PKG_SETUP_VARS:= \
	USE_SHARED_BROTLI=1

define Package/python3-brotlicffi
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python CFFI bindings to the Brotli library
  URL:=https://github.com/python-hyper/brotlicffi
  DEPENDS:=+python3-light +python3-cffi +brotli +libstdcpp
endef

define Package/python3-brotlicffi/description
This library contains Python CFFI bindings for the reference Brotli encoder/decoder, available here. This allows Python software to use the Brotli compression algorithm directly from Python code.
endef

$(eval $(call Py3Package,python3-brotlicffi))
$(eval $(call BuildPackage,python3-brotlicffi))
$(eval $(call BuildPackage,python3-brotlicffi-src))
