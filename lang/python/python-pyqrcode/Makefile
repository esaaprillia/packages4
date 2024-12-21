include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyqrcode
PKG_VERSION:=1.2.1
PKG_RELEASE:=1

PYPI_NAME:=PyQRCode
PKG_HASH:=fdbf7634733e56b72e27f9bce46e4550b75a3a2c420414035cae9d9d26b234d5

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=License

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyqrcode
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A QR code generator written purely in Python with SVG, EPS, PNG and terminal output.
  URL:=https://github.com/mnooner256/pyqrcode
  DEPENDS:=+python3 +python3-pypng
endef

define Package/python3-pyqrcode/description
The pyqrcode module is a QR code generator that is simple to use and written in pure python. The module can automates most of the building process for creating QR codes. Most codes can be created using only two lines of code!
Unlike other generators, all of the helpers can be controlled manually. You are free to set any or all of the properties of your QR code.
QR codes can be saved as SVG, PNG (by using the pypng module), and plain text. They can also be displayed directly in most Linux terminal emulators. PIL is not used to render the image files.
The pyqrcode module attempts to follow the QR code standard as closely as possible. The terminology and the encodings used in pyqrcode come directly from the standard. This module also follows the algorithm laid out in the standard.
endef

$(eval $(call Py3Package,python3-pyqrcode))
$(eval $(call BuildPackage,python3-pyqrcode))
$(eval $(call BuildPackage,python3-pyqrcode-src))
