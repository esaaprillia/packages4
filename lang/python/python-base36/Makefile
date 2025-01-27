include $(TOPDIR)/rules.mk

PKG_NAME:=python-base36
PKG_VERSION:=0.1.1
PKG_RELEASE:=1

PYPI_NAME:=base36
PKG_HASH:=6f221783c5499bd5fd4a1102054df9638d6232ff5ca850c21fd1efe5070c1a96

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-base36
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Yet another implementation for the positional numeral system using 36 as the radix.
  URL:=https://github.com/tonyseek/python-base36
  DEPENDS:=+python3
endef

define Package/python3-base36/description
Yet another implementation for the positional numeral system using 36 as the radix
endef

$(eval $(call Py3Package,python3-base36))
$(eval $(call BuildPackage,python3-base36))
$(eval $(call BuildPackage,python3-base36-src))
