include $(TOPDIR)/rules.mk

PKG_NAME:=python-ndindex
PKG_VERSION:=1.9.2
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=ndindex
PKG_HASH:=b8658a06e52d6c47445c2ec11d292e1d52c3af259214c8b52e3a1aab733daa72

HOST_BUILD_DEPENDS:=python-cython/host python-versioneer/host
PKG_BUILD_DEPENDS:=python-cython/host python-versioneer/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-ndindex
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A Python library for manipulating indices of ndarrays.
  URL:=https://quansight-labs.github.io/ndindex/
  DEPENDS:=+python3 +python3-numpy
endef

define Package/python3-ndindex/description
A Python library for manipulating indices of ndarrays.
The documentation for ndindex can be found at https://quansight-labs.github.io/ndindex/
endef

$(eval $(call Py3Package,python3-ndindex))
$(eval $(call BuildPackage,python3-ndindex))
$(eval $(call BuildPackage,python3-ndindex-src))
$(eval $(call HostBuild))
