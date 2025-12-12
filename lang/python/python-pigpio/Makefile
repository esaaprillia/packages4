include $(TOPDIR)/rules.mk

PKG_NAME:=python-pigpio
PKG_VERSION:=1.78
PKG_RELEASE:=1

PYPI_NAME:=pigpio
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Unlicense
PKG_LICENSE_FILES:=

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pigpio
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Raspberry Pi GPIO module
  URL:=http://abyz.me.uk/rpi/pigpio/python.html
  DEPENDS:=+python3
endef

define Package/python3-pigpio/description
Raspberry Pi Python module to access the pigpio daemon
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pigpio))
$(eval $(call BuildPackage,python3-pigpio))
$(eval $(call BuildPackage,python3-pigpio-src))
