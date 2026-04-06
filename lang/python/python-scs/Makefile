include $(TOPDIR)/rules.mk

PKG_NAME:=python-scs
PKG_VERSION:=3.2.11
PKG_RELEASE:=1

PYPI_NAME:=scs
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=numpy/host meson-python/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../meson/meson.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-scs
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Splitting conic solver
  URL:=https://github.com/cvxgrp/scs
  DEPENDS:=+python3 +python3-numpy +python3-scipy
endef

define Package/python3-scs/description
Python interface for SCS 3.0.0 and higher.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-scs))
$(eval $(call BuildPackage,python3-scs))
$(eval $(call BuildPackage,python3-scs-src))
