include $(TOPDIR)/rules.mk

PKG_NAME:=python-quadprog
PKG_VERSION:=0.1.13
PKG_RELEASE:=1

PYPI_NAME:=quadprog
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../meson/meson.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-quadprog
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Quadratic Programming Solver
  URL:=https://github.com/quadprog/quadprog
  DEPENDS:=+python3 +python3-numpy
endef

define Package/python3-quadprog/description
This routine uses the the Goldfarb/Idnani dual algorithm [1].
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-quadprog))
$(eval $(call BuildPackage,python3-quadprog))
$(eval $(call BuildPackage,python3-quadprog-src))
