include $(TOPDIR)/rules.mk

PKG_NAME:=python-setuptools
PKG_VERSION:=84.0.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:= setuptools
PKG_HASH:=skip

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-setuptools
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Most extensible Python build backend with support for C/C++ extension modules
  URL:=https://setuptools.pypa.io/
  DEPENDS:= \
	+python3
endef

define Package/python3-setuptools/description
A standard install uses pypng to generate PNG files and can also render QR codes directly to the console.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-setuptools))
$(eval $(call BuildPackage,python3-setuptools))
$(eval $(call BuildPackage,python3-setuptools-src))
