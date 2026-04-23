#
# Copyright (C) 2019 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-ruamel-yaml
PKG_VERSION:=0.19.1
PKG_RELEASE:=1

PYPI_NAME:=ruamel.yaml
PKG_SOURCE_URL:=https://yaml.dev/ruamel-dl-tagged-releases/
PYPI_SOURCE_EXT:=tar.xz
PKG_HASH:=skip

PKG_MAINTAINER:=Josef Schlehofer <pepe.schlehofer@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_CPE_ID:=cpe:/a:ruamel.yaml_project:ruamel.yaml

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-ruamel-yaml-clib/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-ruamel-yaml
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=YAML 1.2 loader/dumper
  URL:=https://sourceforge.net/p/ruamel-yaml/code/ci/default/tree
  DEPENDS:= \
      +python3-light +python3-ruamel-yaml-clib
endef

define Package/python3-ruamel-yaml/description
ruamel-yaml is a YAML parser/emitter that supports roundtrip
preservation of comments, seq/map flow style, and map key order
endef

PYTHON3_PKG_WHEEL_NAME:=ruamel_yaml
PYTHON3_PKG_WHEEL_VERSION:=0.19.1

PYTHON3_HOST_WHEEL_NAME:=ruamel_yaml
PYTHON3_HOST_WHEEL_VERSION:=0.19.1

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-ruamel-yaml))
$(eval $(call BuildPackage,python3-ruamel-yaml))
$(eval $(call BuildPackage,python3-ruamel-yaml-src))
