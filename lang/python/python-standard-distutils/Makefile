include $(TOPDIR)/rules.mk

PKG_NAME:=python-standard-distutils
PKG_VERSION:=3.11.9
PKG_RELEASE:=1

PYPI_NAME:=standard_distutils
PKG_HASH:=37d6c9f0f0321ed3c9c923e54b0fdbafa3d7bf556821de55fd8158d7f440deb5

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=PSF-2.0
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-setuptools/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-standard-distutils
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Standard library distutils redistribution.
  URL:=https://github.com/youknowone/python-deadlib
  DEPENDS:=+python3-light
endef

define Package/python3-standard-distutils/description
  Python is moving forward! Python finally started to remove dead batteries. For more information, see PEP 594.
  If your project depends on a module that has been removed from the standard, here is the redistribution of the dead batteries.
endef

$(eval $(call Py3Package,python3-standard-distutils))
$(eval $(call BuildPackage,python3-standard-distutils))
$(eval $(call BuildPackage,python3-standard-distutils-src))
$(eval $(call HostBuild))
