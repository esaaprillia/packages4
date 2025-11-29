include $(TOPDIR)/rules.mk

PKG_NAME:=python-waitress
PKG_VERSION:=3.0.2
PKG_RELEASE:=1

PYPI_NAME:=waitress
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=ZPL-2.1
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-waitress
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Waitress WSGI server
  URL:=https://github.com/Pylons/waitress
  DEPENDS:=+python3
endef

define Package/python3-waitress/description
Waitress is a production-quality pure-Python WSGI server with very acceptable performance. It has no dependencies except ones which live in the Python standard library.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-waitress))
$(eval $(call BuildPackage,python3-waitress))
$(eval $(call BuildPackage,python3-waitress-src))
