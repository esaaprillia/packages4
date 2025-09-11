include $(TOPDIR)/rules.mk

PKG_NAME:=python-uart-devices
PKG_VERSION:=0.1.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=uart_devices
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-uart-devices
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=UART Devices for Linux
  URL:=https://github.com/bdraco/uart-devices
  DEPENDS:=+python3
endef

define Package/python3-uart-devices/description
UART Devices for Linux
endef

$(eval $(call Py3Package,python3-uart-devices))
$(eval $(call BuildPackage,python3-uart-devices))
$(eval $(call BuildPackage,python3-uart-devices-src))
