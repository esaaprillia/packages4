include $(TOPDIR)/rules.mk

PKG_NAME:=python-jaraco-classes
PKG_VERSION:=3.4.0
PKG_RELEASE:=1

PYPI_NAME:=jaraco.classes
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host
HOST_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-jaraco-classes
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Utility functions for Python class constructs
  URL:=https://github.com/jaraco/jaraco.classes
  DEPENDS:=+python3 +python3-more-itertools
endef

define Package/python3-jaraco-classes/description
This project and the maintainers of thousands of other packages are working with Tidelift to deliver one enterprise subscription that covers all of the open source you use.
endef

PYTHON3_PKG_WHEEL_NAME:=jaraco_classes
PYTHON3_PKG_WHEEL_VERSION:=3.4.0

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-jaraco-classes))
$(eval $(call BuildPackage,python3-jaraco-classes))
$(eval $(call BuildPackage,python3-jaraco-classes-src))
