include $(TOPDIR)/rules.mk

PKG_NAME:=python-gpiozero
PKG_VERSION:=2.0.1
PKG_RELEASE:=1

PYPI_NAME:=gpiozero
PKG_HASH:=d4ea1952689ec7e331f9d4ebc9adb15f1d01c2c9dcfabb72e752c9869ab7e97e

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.rst

PKG_BUILD_DEPENDS:=python-setuptools-git-versioning/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-gpiozero
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A simple interface to GPIO devices with Raspberry Pi
  URL:=https://gpiozero.readthedocs.io
  DEPENDS:=+python3-colorzero
endef

define Package/python3-gpiozero/description
  A simple interface to GPIO devices with Raspberry Pi,
  developed and maintained by Ben Nuttall and Dave Jones.
endef

$(eval $(call Py3Package,python3-gpiozero))
$(eval $(call BuildPackage,python3-gpiozero))
$(eval $(call BuildPackage,python3-gpiozero-src))
