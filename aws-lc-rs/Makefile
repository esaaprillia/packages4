include $(TOPDIR)/rules.mk

PKG_NAME:=python-pymeteoclimatic
PKG_VERSION:=0.1.0
PKG_RELEASE:=1

PYPI_NAME:=pymeteoclimatic
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pymeteoclimatic
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A Python wrapper around the Meteoclimatic service
  URL:=https://github.com/adrianmo/pymeteoclimatic
  DEPENDS:= \
	+python3 \
	+python3-lxml \
	+python3-python3-beautifulsoup4
endef

define Package/python3-pymeteoclimatic/description
PyMeteoclimatic is a client Python wrapper library for Meteoclimatic.
endef

$(eval $(call Py3Package,python3-pymeteoclimatic))
$(eval $(call BuildPackage,python3-pymeteoclimatic))
$(eval $(call BuildPackage,python3-pymeteoclimatic-src))
