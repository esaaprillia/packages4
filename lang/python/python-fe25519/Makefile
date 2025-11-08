include $(TOPDIR)/rules.mk

PKG_NAME:=python-fe25519
PKG_VERSION:=2.0.0
PKG_RELEASE:=1

PYPI_NAME:=fe25519
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-fe25519
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Pure-Python data structure for working with Ed25519 (and Ristretto) field elements and operations.
  URL:=https://github.com/nthparty/fe25519
  DEPENDS:=+python3
endef

define Package/python3-fe25519/description
This library provides a native Python implementation of Ed25519 field elements and a number of operations over them.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-fe25519))
$(eval $(call BuildPackage,python3-fe25519))
$(eval $(call BuildPackage,python3-fe25519-src))
