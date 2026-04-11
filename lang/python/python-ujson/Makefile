include $(TOPDIR)/rules.mk

PKG_NAME:=python-ujson
PKG_VERSION:=5.12.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause AND TCL
PKG_LICENSE_FILES:=LICENSE.txt

PYPI_NAME:=ujson
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-ujson
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Ultra fast JSON encoder and decoder for Python
  URL:=https://github.com/ultrajson/ultrajson
  DEPENDS:= \
	+python3-light \
	+libstdcpp
endef

define Package/python3-ujson/description
UltraJSON is an ultra fast JSON encoder and decoder written in pure C with bindings for Python.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-ujson))
$(eval $(call BuildPackage,python3-ujson))
$(eval $(call BuildPackage,python3-ujson-src))
