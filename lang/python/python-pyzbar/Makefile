include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyzbar
PKG_VERSION:=0.1.9
PKG_RELEASE:=1

PYPI_NAME:=pyzbar
PKG_SOURCE_URL:=https://github.com/NaturalHistoryMuseum/pyzbar/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyzbar
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Read one-dimensional barcodes and QR codes from Python 2 and 3.
  URL:=https://github.com/NaturalHistoryMuseum/pyzbar
  DEPENDS:=+python3 +zbar
endef

define Package/python3-pyzbar/description
Read one-dimensional barcodes and QR codes from Python 2 and 3 using the zbar library.
endef

$(eval $(call Py3Package,python3-pyzbar))
$(eval $(call BuildPackage,python3-pyzbar))
$(eval $(call BuildPackage,python3-pyzbar-src))
