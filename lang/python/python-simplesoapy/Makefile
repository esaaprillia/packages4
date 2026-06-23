include $(TOPDIR)/rules.mk

PKG_NAME:=python-simplesoapy
PKG_VERSION:=1.5.1
PKG_RELEASE:=1

PYPI_NAME:=SimpleSoapy
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-simplesoapy
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Simple pythonic wrapper for SoapySDR library
  URL:=https://github.com/xmikos/simplesoapy
  DEPENDS:=+python3 +python3-numpy +soapy-sdr
endef

define Package/python3-simplesoapy/description
Simple pythonic wrapper for SoapySDR library
endef

PYTHON3_PKG_WHEEL_NAME:=simplesoapy

$(eval $(call Py3Package,python3-simplesoapy))
$(eval $(call BuildPackage,python3-simplesoapy))
$(eval $(call BuildPackage,python3-simplesoapy-src))
