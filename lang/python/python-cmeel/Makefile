include $(TOPDIR)/rules.mk

PKG_NAME:=python-cmeel
PKG_VERSION:=0.59.0
PKG_RELEASE:=1

PYPI_NAME:=cmeel
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-git-archive-all/host python-packaging/host python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-cmeel
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Create Wheel from CMake projects
  URL:=https://github.com/cmake-wheel/cmeel
  DEPENDS:=+python3
endef

define Package/python3-cmeel/description
Wheel build backend using CMake, to package any CMake project with pip and distribute on PyPI.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-cmeel))
$(eval $(call BuildPackage,python3-cmeel))
$(eval $(call BuildPackage,python3-cmeel-src))
