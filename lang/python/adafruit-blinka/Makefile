include $(TOPDIR)/rules.mk

PKG_NAME:=adafruit-blinka
PKG_VERSION:=8.65.0
PKG_RELEASE:=1

PYPI_NAME:=Adafruit-Blinka
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-adafruit-blinka
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=CircuitPython APIs for non-CircuitPython versions of Python such as CPython on Linux and MicroPython.
  URL:=https://github.com/adafruit/Adafruit_Blinka
  DEPENDS:=+python3-light +python3-adafruit-platformdetect +python3-adafruit-pureio +python3-binho-host-adapter +python3-pyftdi +python3-adafruit-circuitpython-typing +python3-sysv-ipc
endef

define Package/python3-adafruit-blinka/description
This repository contains a selection of packages emulating the CircuitPython API for devices or hosts running CPython or MicroPython.
endef

$(eval $(call Py3Package,python3-adafruit-blinka))
$(eval $(call BuildPackage,python3-adafruit-blinka))
$(eval $(call BuildPackage,python3-adafruit-blinka-src))
