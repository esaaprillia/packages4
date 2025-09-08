include $(TOPDIR)/rules.mk

PKG_NAME:=python-fastjsonschema
PKG_VERSION:=2.21.2
PKG_RELEASE:=1

PYPI_NAME:=validate_pyproject
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-fastjsonschema
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Fast JSON schema validator for Python.
  URL:=https://horejsek.github.io/python-fastjsonschema/
  DEPENDS:=+python3
endef

define Package/python3-fastjsonschema/description
Fast JSON schema validator for Python.
endef

$(eval $(call Py3Package,python3-fastjsonschema))
$(eval $(call BuildPackage,python3-fastjsonschema))
$(eval $(call BuildPackage,python3-fastjsonschema-src))
$(eval $(call HostBuild))
