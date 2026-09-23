include $(TOPDIR)/rules.mk

PKG_NAME:=python-asyncstdlib
PKG_VERSION:=3.14.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=asyncstdlib
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-flit-core/host
HOST_BUILD_DEPENDS:=python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-asyncstdlib
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The missing async toolbox
  URL:=https://asyncstdlib.readthedocs.io/en/latest/
  DEPENDS:= \
	+python3
endef

define Package/python3-asyncstdlib/description
The asyncstdlib library re-implements functions and classes of the Python standard library to make them compatible with async callables, iterables and context managers.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-asyncstdlib))
$(eval $(call BuildPackage,python3-asyncstdlib))
$(eval $(call BuildPackage,python3-asyncstdlib-src))
