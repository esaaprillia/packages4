include $(TOPDIR)/rules.mk

PKG_NAME:=lgpio
PKG_VERSION:=0.2.2.0
PKG_RELEASE:=1

PYPI_NAME:=lgpio
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=unlicense
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-lgpio
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Linux SBC GPIO module
  URL:=http://abyz.me.uk/lg/py_lgpio.html
  DEPENDS:=+python3-light
endef

define Package/python3-lgpio/description
lgpio is a module for Linux Single Board Computers (SBC) which allows control of the General Purpose Input Outputs (GPIO).
endef

$(eval $(call Py3Package,python3-lgpio))
$(eval $(call BuildPackage,python3-lgpio))
$(eval $(call BuildPackage,python3-lgpio-src))
