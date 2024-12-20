include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyudev
PKG_VERSION:=0.24.1
PKG_RELEASE:=1

PYPI_NAME:=pyudev
PKG_HASH:=75e54d37218f5ac45b0da1f0fd9cc5e526a3cac3ef1cfad410cf7ab338b01471

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyudev
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python bindings to libudev (with support for PyQt4, PySide, pygobject and wx)
  URL:=http://pyudev.readthedocs.org/
  DEPENDS:=+python3
endef

define Package/python3-pyudev/description
pyudev is a LGPL licensed, pure Python binding for libudev, the device and hardware management and information library for Linux. It supports almost all libudev functionality. You can enumerate devices, query device properties and attributes or monitor devices, including asynchronous monitoring with threads, or within the event loops of Qt, Glib or wxPython.
The binding supports CPython 3 and compatible versions of PyPy. It is tested against udev 151 or newer, earlier versions of udev as found on dated Linux systems may work, but are not officially supported.
endef

$(eval $(call Py3Package,python3-pyudev))
$(eval $(call BuildPackage,python3-pyudev))
$(eval $(call BuildPackage,python3-pyudev-src))
