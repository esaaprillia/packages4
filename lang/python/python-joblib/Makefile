include $(TOPDIR)/rules.mk

PKG_NAME:=python-joblib
PKG_VERSION:=1.5.3
PKG_RELEASE:=1

PYPI_NAME:=joblib
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-joblib
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Lightweight pipelining with Python functions
  URL:=https://joblib.readthedocs.io/
  DEPENDS:=+python3-numpy +python3-loky +python3-lz4 +python3-psutil
endef

define Package/python3-joblib/description
Lightweight pipelining with Python functions
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-joblib))
$(eval $(call BuildPackage,python3-joblib))
$(eval $(call BuildPackage,python3-joblib-src))
