include $(TOPDIR)/rules.mk

PKG_NAME:=python-requirements-parser
PKG_VERSION:=0.13.1
PKG_RELEASE:=1

PYPI_NAME:=requirements_parser
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host
HOST_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-requirements-parser
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=This is a small Python module for parsing Pip requirement files.
  URL:=https://github.com/madpah/requirements-parser
  DEPENDS:=+python3
endef

define Package/python3-requirements-parser/description
This is a small Python module for parsing Pip requirement files.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-requirements-parser))
$(eval $(call BuildPackage,python3-requirements-parser))
$(eval $(call BuildPackage,python3-requirements-parser-src))
