include $(TOPDIR)/rules.mk

PKG_NAME:=python-pygatt
PKG_VERSION:=5.0.0
PKG_RELEASE:=1

PYPI_NAME:=pygatt
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache 2.0 and MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-coverage/host python-pygments/host python-iniconfig/host python-pytest/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pygatt
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python Bluetooth LE (Low Energy) and GATT Library
  URL:=https://github.com/peplin/pygatt
  DEPENDS:=+python3 +python3-pyserial +python3-enum-compat +python3-pexpect
endef

define Package/python3-pygatt/description
  This Module allows reading and writing to GATT descriptors on devices such as fitness trackers, sensors, and anything implementing standard GATT Descriptor behavior.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pygatt))
$(eval $(call BuildPackage,python3-pygatt))
$(eval $(call BuildPackage,python3-pygatt-src))
