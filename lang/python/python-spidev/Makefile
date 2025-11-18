include $(TOPDIR)/rules.mk

PKG_NAME:=python-spidev
PKG_VERSION:=3.8
PKG_RELEASE:=1

PYPI_NAME:=spidev
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-spidev
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python bindings for Linux SPI access through spidev
  URL:=https://github.com/doceme/py-spidev
  DEPENDS:=+python3
endef

define Package/python3-spidev/description
This project contains a python module for interfacing with SPI devices from user space via the spidev linux kernel driver.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-spidev))
$(eval $(call BuildPackage,python3-spidev))
$(eval $(call BuildPackage,python3-spidev-src))
