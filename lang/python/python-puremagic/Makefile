include $(TOPDIR)/rules.mk

PKG_NAME:=python-puremagic
PKG_VERSION:=2.2.0
PKG_RELEASE:=1

PYPI_NAME:=puremagic
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-puremagic
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Pure python implementation of magic file detection
  URL:=https://github.com/cdgriffith/puremagic
  DEPENDS:=+python3
endef

define Package/python3-puremagic/description
puremagic is a pure python module that will identify a file based off its magic numbers.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-puremagic))
$(eval $(call BuildPackage,python3-puremagic))
$(eval $(call BuildPackage,python3-puremagic-src))
