include $(TOPDIR)/rules.mk

PKG_NAME:=python-deprecated
PKG_VERSION:=1.3.1
PKG_RELEASE:=1

PYPI_NAME:=deprecated
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.rst

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-deprecated
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python @deprecated decorator to deprecate old python classes, functions or methods.
  URL:=https://deprecated.readthedocs.io/
  DEPENDS:=+python3 +python3-wrapt +python3-inspect2
endef

define Package/python3-deprecated/description
Python @deprecated decorator to deprecate old python classes, functions or methods.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-deprecated))
$(eval $(call BuildPackage,python3-deprecated))
$(eval $(call BuildPackage,python3-deprecated-src))
