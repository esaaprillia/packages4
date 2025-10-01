include $(TOPDIR)/rules.mk

PKG_NAME:=python-loky
PKG_VERSION:=3.5.6
PKG_RELEASE:=1

PYPI_NAME:=loky
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-loky
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A robust implementation of concurrent.futures.ProcessPoolExecutor
  URL:=http://loky.readthedocs.io/
  DEPENDS:=+python3 +python3-cloudpickle
endef

define Package/python3-loky/description
The aim of this project is to provide a robust, cross-platform and cross-version implementation of the ProcessPoolExecutor class of concurrent.futures. 
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-loky))
$(eval $(call BuildPackage,python3-loky))
$(eval $(call BuildPackage,python3-loky-src))
