include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyusb
PKG_VERSION:=1.3.1
PKG_RELEASE:=1

PYPI_NAME:=pyusb
PKG_HASH:=3af070b607467c1c164f49d5b0caabe8ac78dbed9298d703a8dbf9df4052d17e

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyusb
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python USB access module
  URL:=https://pyusb.github.io/pyusb
  DEPENDS:=+python3-ctypes +python3-logging +libusb-1.0
endef

define Package/python3-pyusb/description
  PyUSB offers easy USB devices communication in Python.
endef

$(eval $(call Py3Package,python3-pyusb))
$(eval $(call BuildPackage,python3-pyusb))
$(eval $(call BuildPackage,python3-pyusb-src))
