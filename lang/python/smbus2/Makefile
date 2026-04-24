include $(TOPDIR)/rules.mk

PKG_NAME:=smbus2
PKG_VERSION:=0.6.1
PKG_RELEASE:=1

PYPI_NAME:=smbus2
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-smbus2
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=smbus2 is a drop-in replacement for smbus-cffi/smbus-python in pure Python
  URL:=https://github.com/kplindegaard/smbus2
  DEPENDS:=+python3
endef

define Package/python3-smbus2/description
  smbus2 is (yet another) pure Python implementation of the python-smbus package.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-smbus2))
$(eval $(call BuildPackage,python3-smbus2))
$(eval $(call BuildPackage,python3-smbus2-src))
