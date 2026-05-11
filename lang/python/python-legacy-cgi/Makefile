include $(TOPDIR)/rules.mk

PKG_NAME:=python-legacy-cgi
PKG_VERSION:=2.6.4
PKG_RELEASE:=1

PYPI_NAME:=legacy_cgi
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=PSF-2.0
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-legacy-cgi
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Fork of the standard library cgi and cgitb modules removed in Python 3.13
  URL:=https://github.com/jackrosenthal/legacy-cgi
  DEPENDS:=+python3
endef

define Package/python3-legacy-cgi/description
This is a fork of the standard library modules cgi and cgitb. They have been removed from the Python standard libary in Python 3.13 by PEP-594.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-legacy-cgi))
$(eval $(call BuildPackage,python3-legacy-cgi))
$(eval $(call BuildPackage,python3-legacy-cgi-src))
