include $(TOPDIR)/rules.mk

PKG_NAME:=python-jaraco-functools
PKG_VERSION:=4.5.0
PKG_RELEASE:=1

PYPI_NAME:=jaraco_functools
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-coherent-licensed/host python-more-itertools/host
HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-coherent-licensed/host python-more-itertools/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-jaraco-functools
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Functools like those found in stdlib
  URL:=https://github.com/jaraco/jaraco.functools
  DEPENDS:=+python3 +python3-more-itertools
endef

define Package/python3-jaraco-functools/description
This project and the maintainers of thousands of other packages are working with Tidelift to deliver one enterprise subscription that covers all of the open source you use.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-jaraco-functools))
$(eval $(call BuildPackage,python3-jaraco-functools))
$(eval $(call BuildPackage,python3-jaraco-functools-src))
