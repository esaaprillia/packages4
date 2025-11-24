include $(TOPDIR)/rules.mk

PKG_NAME:=python-inspect2
PKG_VERSION:=0.1.2
PKG_RELEASE:=1

PYPI_NAME:=inspect2
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=PSF
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-inspect2
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Backport of the Python 3.6 inspect module to Python 2.7-3.5
  URL:=https://github.com/JelleZijlstra/inspect2
  DEPENDS:=+python3
endef

define Package/python3-inspect2/description
This module was based on the code of the inspect module and its tests in the Python 3.6 standard library and modified to pass tests on earlier Python versions.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-inspect2))
$(eval $(call BuildPackage,python3-inspect2))
$(eval $(call BuildPackage,python3-inspect2-src))
