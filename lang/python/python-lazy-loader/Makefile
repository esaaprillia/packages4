include $(TOPDIR)/rules.mk

PKG_NAME:=python-lazy-loader
PKG_VERSION:=0.5
PKG_RELEASE:=1

PYPI_NAME:=lazy_loader
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.md

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-lazy-loader
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Makes it easy to load subpackages and functions on demand.
  URL:=https://scientific-python.org/specs/spec-0001/
  DEPENDS:= \
	+python3-light \
	+python3-packaging
endef

define Package/python3-lazy-loader/description
lazy_loader makes it easy to load subpackages and functions on demand.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-lazy-loader))
$(eval $(call BuildPackage,python3-lazy-loader))
$(eval $(call BuildPackage,python3-lazy-loader-src))
