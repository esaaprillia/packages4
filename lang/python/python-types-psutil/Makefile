include $(TOPDIR)/rules.mk

PKG_NAME:=python-types-psutil
PKG_VERSION:=7.0.0.20250218
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=types_psutil
PKG_HASH:=1e642cdafe837b240295b23b1cbd4691d80b08a07d29932143cbbae30eb0db9c

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-types-psutil
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Typing stubs for psutil
  URL:=https://github.com/python/typeshed
  DEPENDS:=+python3
endef

define Package/python3-types-psutil/description
This is a PEP 561 type stub package for the psutil package. It can be used by type-checking tools like mypy, pyright, pytype, Pyre, PyCharm, etc. to check code that uses psutil. This version of types-psutil aims to provide accurate annotations for psutil==6.1.*.
This package is part of the typeshed project. All fixes for types and metadata should be contributed there. See the README for more details. The source for this package can be found in the stubs/psutil directory.
This package was tested with mypy 1.13.0, pyright 1.1.387, and pytype 2024.10.11. It was generated from typeshed commit 898cb55af32b80903b7de775dc13d9841aef58d0.
endef

$(eval $(call Py3Package,python3-types-psutil))
$(eval $(call BuildPackage,python3-types-psutil))
$(eval $(call BuildPackage,python3-types-psutil-src))
$(eval $(call HostBuild))
