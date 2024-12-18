include $(TOPDIR)/rules.mk

PKG_NAME:=python-intelhex
PKG_VERSION:=2.3.0
PKG_RELEASE:=1

PYPI_NAME:=intelhex
PKG_HASH:=892b7361a719f4945237da8ccf754e9513db32f5628852785aea108dcd250093

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-intelhex
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python IntelHex library
  URL:=https://github.com/python-intelhex/intelhex
  DEPENDS:=+python3
endef

define Package/python3-intelhex/description
  The Intel HEX file format is widely used in microprocessors and microcontrollers area (embedded systems etc) as the de facto standard for representation of code to be programmed into microelectronic devices.
endef

$(eval $(call Py3Package,python3-intelhex))
$(eval $(call BuildPackage,python3-intelhex))
$(eval $(call BuildPackage,python3-intelhex-src))
