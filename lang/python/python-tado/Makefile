include $(TOPDIR)/rules.mk

PKG_NAME:=python-tado
PKG_VERSION:=0.19.2
PKG_RELEASE:=1

PYPI_NAME:=python_tado
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-tado
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python binding for Tado web API.
  URL:=https://github.com/wmalgadey/PyTado
  DEPENDS:= \
	+python3-light \
	+python3-requests
endef

define Package/python3-tado/description
PyTado is a Python module implementing an interface to the Tado web API.
endef

$(eval $(call Py3Package,python3-tado))
$(eval $(call BuildPackage,python3-tado))
$(eval $(call BuildPackage,python3-tado-src))
