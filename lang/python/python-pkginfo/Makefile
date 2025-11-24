include $(TOPDIR)/rules.mk

PKG_NAME:=python-pkginfo
PKG_VERSION:=1.12.1.2
PKG_RELEASE:=1

PYPI_NAME:=pkginfo
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pkginfo
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Query metadata from sdists / bdists / installed packages.
  URL:=https://code.launchpad.net/~tseaver/pkginfo/trunk
  DEPENDS:=+python3
endef

define Package/python3-pkginfo/description
This package provides an API for querying the distutils metadata written in the PKG-INFO file inside a source distribution (an sdist) or a binary distribution (e.g., created by running bdist_egg). It can also query the EGG-INFO directory of an installed distribution, and the *.egg-info stored in a “development checkout” (e.g, created by running setup.py develop).
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pkginfo))
$(eval $(call BuildPackage,python3-pkginfo))
$(eval $(call BuildPackage,python3-pkginfo-src))
