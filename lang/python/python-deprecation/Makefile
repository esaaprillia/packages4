include $(TOPDIR)/rules.mk

PKG_NAME:=python-deprecation
PKG_VERSION:=2.1.0
PKG_RELEASE:=1

PYPI_NAME:=deprecation
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-deprecation
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A library to handle automated deprecations
  URL:=https://deprecation.readthedocs.io
  DEPENDS:=+python3 +python3-packaging
endef

define Package/python3-deprecation/description
  The deprecation library provides a deprecated decorator and a fail_if_not_removed decorator for your tests.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-deprecation))
$(eval $(call BuildPackage,python3-deprecation))
$(eval $(call BuildPackage,python3-deprecation-src))
