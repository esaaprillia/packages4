include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyftdi
PKG_VERSION:=0.56.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=pyftdi
PKG_SOURCE_URL:=https://github.com/eblot/pyftdi/archive/v$(PKG_VERSION)
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyftdi
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=FTDI device driver (pure Python)
  URL:=https://github.com/eblot/pyftdi
  DEPENDS:=+python3 +python3-pyusb +python3-pyserial
endef

define Package/python3-pyftdi/description
PyFtdi aims at providing a user-space driver for popular FTDI devices, implemented in pure Python language.
endef

$(eval $(call Py3Package,python3-pyftdi))
$(eval $(call BuildPackage,python3-pyftdi))
$(eval $(call BuildPackage,python3-pyftdi-src))
