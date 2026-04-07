include $(TOPDIR)/rules.mk

PKG_NAME:=python-ruamel-yaml-clib
PKG_VERSION:=0.2.15
PKG_RELEASE:=1

PYPI_NAME:=ruamel.yaml.clib
PKG_SOURCE_URL:=https://yaml.dev/ruamel-dl-tagged-releases/
PYPI_SOURCE_EXT:=tar.xz
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-ruamel-yaml-clib
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=C version of reader, parser and emitter for ruamel.yaml derived from libyaml
  URL:=https://yaml.dev/doc/ruamel.yaml.clib/
  DEPENDS:=+python3-light
endef

define Package/python3-ruamel-yaml-clib/description
This package was split of from ruamel.yaml, so that ruamel.yaml can be build as a universal wheel.
endef

PYTHON3_PKG_WHEEL_NAME:=ruamel_yaml_clib
PYTHON3_PKG_WHEEL_VERSION:=0.2.15

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-ruamel-yaml-clib))
$(eval $(call BuildPackage,python3-ruamel-yaml-clib))
$(eval $(call BuildPackage,python3-ruamel-yaml-clib-src))
