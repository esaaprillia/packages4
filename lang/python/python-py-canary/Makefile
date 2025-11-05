include $(TOPDIR)/rules.mk

PKG_NAME:=python-py-canary
PKG_VERSION:=0.5.4
PKG_RELEASE:=1

PYPI_NAME:=py_canary
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-py-canary
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python API for Canary Security Camera.
  URL:=https://github.com/snjoetw/py-canary
  DEPENDS:=+python3-light +python3-requests
endef

define Package/python3-py-canary/description
Python API for Canary Security Camera. This is used in Home Assistant but should be generic enough that can be used elsewhere.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-py-canary))
$(eval $(call BuildPackage,python3-py-canary))
$(eval $(call BuildPackage,python3-py-canary-src))
