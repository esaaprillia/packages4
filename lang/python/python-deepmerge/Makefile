include $(TOPDIR)/rules.mk

PKG_NAME:=python-deepmerge
PKG_VERSION:=2.0
PKG_RELEASE:=1

PYPI_NAME:=deepmerge
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-deepmerge
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A toolset for deeply merging Python dictionaries.
  URL:=https://github.com/toumorokoshi/deepmerge
  DEPENDS:= \
	+python3
endef

define Package/python3-deepmerge/description
A tool to handle merging of nested data structures in Python.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-deepmerge))
$(eval $(call BuildPackage,python3-deepmerge))
$(eval $(call BuildPackage,python3-deepmerge-src))
