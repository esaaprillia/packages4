include $(TOPDIR)/rules.mk

PKG_NAME:=python-pynetgear
PKG_VERSION:=0.10.10
PKG_RELEASE:=1

PYPI_NAME:=pynetgear
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pynetgear
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Access Netgear routers using their SOAP API
  URL:=http://github.com/MatMaul/pynetgear
  DEPENDS:= \
	+python3-light \
	+python3-requests
endef

define Package/python3-pynetgear/description
pyNetgear provides an easy to use Python API to control your Netgear router. It uses the SOAP-api on modern Netgear routers to communicate.
endef

$(eval $(call Py3Package,python3-pynetgear))
$(eval $(call BuildPackage,python3-pynetgear))
$(eval $(call BuildPackage,python3-pynetgear-src))
