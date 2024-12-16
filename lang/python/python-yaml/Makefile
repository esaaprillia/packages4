#
# Copyright (C) 2008-2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-yaml
PKG_VERSION:=6.0.2
PKG_RELEASE:=1

PYPI_NAME:=pyyaml
PKG_HASH:=d584d9ec91ad65861cc08d42e834324ef890a082e591037abe114850ff7bbc3e

PKG_MAINTAINER:=Josef Schlehofer <pepe.schlehofer@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_CPE_ID:=cpe:/a:pyyaml:pyyaml

PKG_BUILD_DEPENDS:=python-cython/host
HOST_BUILD_DEPENDS:=python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-yaml
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=YAML parser and emitter
  URL:=https://github.com/yaml/pyyaml
  DEPENDS:=+libyaml +python3-light
endef

define Package/python3-yaml/description
  PyYAML is a YAML parser and emitter for the Python programming language.
endef

PYTHON3_HOST_WHEEL_NAME:=PyYAML
PYTHON3_HOST_WHEEL_VERSION:=6.0.2
PYTHON3_PKG_WHEEL_NAME:=PyYAML
PYTHON3_PKG_WHEEL_VERSION:=6.0.2
PYTHON3_PKG_BUILD_VARS:=PYYAML_FORCE_LIBYAML=1

$(eval $(call Py3Package,python3-yaml))
$(eval $(call BuildPackage,python3-yaml))
$(eval $(call BuildPackage,python3-yaml-src))
$(eval $(call HostBuild))
