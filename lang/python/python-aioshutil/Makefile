include $(TOPDIR)/rules.mk

PKG_NAME:=python-aioshutil
PKG_VERSION:=1.6
PKG_RELEASE:=1

PYPI_NAME:=aioshutil
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-aioshutil
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Asynchronous shutil module.
  URL:=https://github.com/kumaraditya303/aioshutil
  DEPENDS:=+python3
endef

define Package/python3-aioshutil/description
aioshutil is a Python library which provides asynchronous version of function of shutil module.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-aioshutil))
$(eval $(call BuildPackage,python3-aioshutil))
$(eval $(call BuildPackage,python3-aioshutil-src))
