include $(TOPDIR)/rules.mk

PKG_NAME:=python-gitdb
PKG_VERSION:=4.0.12
PKG_RELEASE:=1

PYPI_NAME:=gitdb
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-smmap/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-gitdb
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Git Object Database
  URL:=https://github.com/gitpython-developers/gitdb
  DEPENDS:= \
	+python3 \
	+python3-smmap
endef

define Package/python3-gitdb/description
GitDB is a pure-Python git object database
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-gitdb))
$(eval $(call BuildPackage,python3-gitdb))
$(eval $(call BuildPackage,python3-gitdb-src))
