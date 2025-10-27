include $(TOPDIR)/rules.mk

PKG_NAME:=python-riden
PKG_VERSION:=1.2.1
PKG_RELEASE:=1

PYPI_NAME:=Riden
PKG_SOURCE_URL:=https://github.com/geeksville/Riden/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-riden
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A python library for Riden RD power supplies
  URL:=https://github.com/geeksville/Riden
  DEPENDS:=+python3 +python3-click +python3-modbus-tk +python3-pyserial
endef

define Package/python3-riden/description
A python library for Riden RD power supplies
This library is based on Baldanos/rd6006
endef

PYTHON3_PKG_WHEEL_NAME:=riden
PYTHON3_PKG_WHEEL_VERSION:=1.2.1

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-riden))
$(eval $(call BuildPackage,python3-riden))
$(eval $(call BuildPackage,python3-riden-src))
