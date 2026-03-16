include $(TOPDIR)/rules.mk

PKG_NAME:=python-onvif-parsers
PKG_VERSION:=2.3.0
PKG_RELEASE:=1

PYPI_NAME:=onvif_parsers
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-onvif-parsers
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Parsers for ONVIF events
  URL:=https://onvif-parsers.readthedocs.io/
  DEPENDS:= \
	+python3-light \
	+python3-lxml \
	+python3-onvif-zeep-async \
	+python3-zeep
endef

define Package/python3-onvif-parsers/description
This package contains parsers for the ONVIF events protocol.
endef

$(eval $(call Py3Package,python3-onvif-parsers))
$(eval $(call BuildPackage,python3-onvif-parsers))
$(eval $(call BuildPackage,python3-onvif-parsers-src))
