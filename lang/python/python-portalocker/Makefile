include $(TOPDIR)/rules.mk

PKG_NAME:=python-portalocker
PKG_VERSION:=3.2.0
PKG_RELEASE:=1

PYPI_NAME:=portalocker
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-portalocker
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Wraps the portalocker recipe for easy usage
  URL:=https://portalocker.readthedocs.io/
  DEPENDS:= \
	+python3-light
endef

define Package/python3-portalocker/description
Portalocker is a library to provide an easy API to file locking.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-portalocker))
$(eval $(call BuildPackage,python3-portalocker))
$(eval $(call BuildPackage,python3-portalocker-src))
