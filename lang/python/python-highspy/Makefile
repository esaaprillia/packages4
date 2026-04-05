include $(TOPDIR)/rules.mk

PKG_NAME:=python-highspy
PKG_VERSION:=1.13.1
PKG_RELEASE:=1

PYPI_NAME:=HiGHS
PKG_SOURCE_URL:=https://github.com/ERGO-Code/HiGHS/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-scikit-build-core/host python-pybind11/host numpy/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-highspy
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Linear optimization software
  URL:=https://github.com/ERGO-Code/HiGHS
  DEPENDS:=+python3 +python3-numpy
endef

define Package/python3-highspy/description
HiGHS is a high performance serial and parallel solver for large scale sparse linear optimization problems of the form
endef

PYTHON3_PKG_WHEEL_NAME:=highspy
PYTHON3_PKG_WHEEL_VERSION:=1.13.1

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-highspy))
$(eval $(call BuildPackage,python3-highspy))
$(eval $(call BuildPackage,python3-highspy-src))
