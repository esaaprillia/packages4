include $(TOPDIR)/rules.mk

PKG_NAME:=python-keyring
PKG_VERSION:=25.7.0
PKG_RELEASE:=1

PYPI_NAME:=keyring
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-coherent-licensed/host python-secretstorage/host python-jeepney/host python-jaraco-classes/host python-jaraco-functools/host python-jaraco-context/host
HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-coherent-licensed/host python-secretstorage/host python-jeepney/host python-jaraco-classes/host python-jaraco-functools/host python-jaraco-context/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-keyring
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Store and access your passwords safely.
  URL:=https://github.com/jaraco/keyring
  DEPENDS:=+python3 +python3-secretstorage +python3-jeepney +python3-jaraco-classes +python3-jaraco-functools +python3-jaraco-context
endef

define Package/python3-keyring/description
The Python keyring library provides an easy way to access the system keyring service from python. It can be used in any application that needs safe password storage.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-keyring))
$(eval $(call BuildPackage,python3-keyring))
$(eval $(call BuildPackage,python3-keyring-src))
