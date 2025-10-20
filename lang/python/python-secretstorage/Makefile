include $(TOPDIR)/rules.mk

PKG_NAME:=python-secretstorage
PKG_VERSION:=3.4.0
PKG_RELEASE:=1

PYPI_NAME:=secretstorage
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-secretstorage
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Store and access your passwords safely.
  URL:=https://secretstorage.readthedocs.io
  DEPENDS:=+python3 +python3-cryptography +python3-jeepney
endef

define Package/python3-secretstorage/description
This module provides a way for securely storing passwords and other secrets.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-secretstorage))
$(eval $(call BuildPackage,python3-secretstorage))
$(eval $(call BuildPackage,python3-secretstorage-src))
