include $(TOPDIR)/rules.mk

PKG_NAME:=python-bluetooth-data-tools
PKG_VERSION:=1.22.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=bluetooth_data_tools
PKG_HASH:=f466495caf49594531fedd667d402e883a85b8cc89f3b3daf61b8952061392dc

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-bluetooth-data-tools
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Tools for converting bluetooth data and packets
  URL:=https://github.com/Bluetooth-Devices/bluetooth-data-tools
  DEPENDS:=+python3 +python3-cryptography
endef

define Package/python3-bluetooth-data-tools/description
Tools for converting bluetooth data and packets
endef

$(eval $(call Py3Package,python3-bluetooth-data-tools))
$(eval $(call BuildPackage,python3-bluetooth-data-tools))
$(eval $(call BuildPackage,python3-bluetooth-data-tools-src))
