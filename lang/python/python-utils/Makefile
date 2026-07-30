include $(TOPDIR)/rules.mk

PKG_NAME:=python-utils
PKG_VERSION:=4.0.0
PKG_RELEASE:=1

PYPI_NAME:=python_utils
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-utils
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python Utils is a module with some convenient utilities not included with the standard Python install
  URL:=https://github.com/WoLpH/python-utils
  DEPENDS:= \
	+python3-light \
	+python3-typing-extensions
endef

define Package/python3-utils/description
Python Utils is a collection of small Python functions and classes which make common patterns shorter and easier.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-utils))
$(eval $(call BuildPackage,python3-utils))
$(eval $(call BuildPackage,python3-utils-src))
