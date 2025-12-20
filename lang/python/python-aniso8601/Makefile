include $(TOPDIR)/rules.mk

PKG_NAME:=python-aniso8601
PKG_VERSION:=10.0.1
PKG_RELEASE:=1

PYPI_NAME:=aniso8601
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-aniso8601
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A library for parsing ISO 8601 strings.
  URL:=https://aniso8601.readthedocs.io/
  DEPENDS:= \
	+python3-light
endef

define Package/python3-aniso8601/description
Another ISO 8601 parser for Python
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-aniso8601))
$(eval $(call BuildPackage,python3-aniso8601))
$(eval $(call BuildPackage,python3-aniso8601-src))
