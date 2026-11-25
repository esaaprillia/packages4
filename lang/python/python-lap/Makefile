include $(TOPDIR)/rules.mk

PKG_NAME:=python-lap
PKG_VERSION:=0.5.14
PKG_RELEASE:=1

PYPI_NAME:=lap
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=numpy/host python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-lap
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Linear Assignment Problem solver (LAPJV/LAPMOD).
  URL:=https://github.com/gatagat/lap
  DEPENDS:= \
	+python3-light \
	+python3-numpy
endef

define Package/python3-lap/description
lap is a linear assignment problem solver using Jonker-Volgenant algorithm for dense LAPJV¹ or sparse LAPMOD² matrices.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-lap))
$(eval $(call BuildPackage,python3-lap))
$(eval $(call BuildPackage,python3-lap-src))
