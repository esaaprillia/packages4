include $(TOPDIR)/rules.mk

PKG_NAME:=python-lmdb
PKG_VERSION:=2.2.1
PKG_RELEASE:=1

PYPI_NAME:=lmdb
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=OLDAP-2.8
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-patch-ng/host python-cffi/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-lmdb
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Universal Python binding for the LMDB 'Lightning' Database
  URL:=http://github.com/jnwatson/py-lmdb/
  DEPENDS:= \
	+python3-light \
	+python3-cffi
endef

define Package/python3-lmdb/description
Universal Python binding for the LMDB 'Lightning' Database
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-lmdb))
$(eval $(call BuildPackage,python3-lmdb))
$(eval $(call BuildPackage,python3-lmdb-src))
