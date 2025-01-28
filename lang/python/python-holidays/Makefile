include $(TOPDIR)/rules.mk

PKG_NAME:=python-holidays
PKG_VERSION:=0.65
PKG_RELEASE:=1

PYPI_NAME:=holidays
PKG_HASH:=a20a4f0299b1ecd6238c8a62f622c637742ee3212b3abeb616a85686b99ea621

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-holidays
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Generate and work with holidays in Python
  URL:=https://github.com/vacanza/holidays/
  DEPENDS:=+python3-dateutil
endef

define Package/python3-holidays/description
  A fast, efficient Python library for generating country- and subdivision-
  (e.g. state or province) specific sets of government-designated holidays
  on the fly. It aims to make determining whether a specific date is a holiday
  as fast and flexible as possible.
endef

$(eval $(call Py3Package,python3-holidays))
$(eval $(call BuildPackage,python3-holidays))
$(eval $(call BuildPackage,python3-holidays-src))
