include $(TOPDIR)/rules.mk

PKG_NAME:=python-oldest-supported-numpy
PKG_VERSION:=2023.12.21
PKG_RELEASE:=1

PYPI_NAME:=oldest-supported-numpy
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=numpy/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-oldest-supported-numpy
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Meta-package that provides the oldest NumPy that supports a given Python version and platform
  URL:=https://github.com/scipy/oldest-supported-numpy
  DEPENDS:= \
	+python3 \
	+python3-numpy
endef

define Package/python3-oldest-supported-numpy/description
Meta-package that provides the oldest NumPy that supports a given Python version and platform. If wheels for the platform became available on PyPI only for a more recent NumPy version, then that NumPy version is specified.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-oldest-supported-numpy))
$(eval $(call BuildPackage,python3-oldest-supported-numpy))
$(eval $(call BuildPackage,python3-oldest-supported-numpy-src))
