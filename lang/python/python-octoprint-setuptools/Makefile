include $(TOPDIR)/rules.mk

PKG_NAME:=python-octoprint-setuptools
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PYPI_NAME:=octoprint_setuptools
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=AGPLv3
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-octoprint-setuptools
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Setuptools helpers for installing OctoPrint & OctoPrint plugins
  URL:=https://github.com/OctoPrint/OctoPrint-Setuptools
  DEPENDS:= \
	+python3
endef

define Package/python3-octoprint-setuptools/description
Setuptools helpers for installing OctoPrint & OctoPrint plugins.
Provided as a separate package to allow for easy reuse and as build dependency for OctoPrint plugins.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-octoprint-setuptools))
$(eval $(call BuildPackage,python3-octoprint-setuptools))
$(eval $(call BuildPackage,python3-octoprint-setuptools-src))
