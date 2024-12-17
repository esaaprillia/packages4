#
# Copyright (C) 2023 Jeffery To
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-jsonschema-specifications
PKG_VERSION:=2024.10.1
PKG_RELEASE:=1

PYPI_NAME:=jsonschema_specifications
PYPI_SOURCE_NAME:=jsonschema_specifications
PKG_HASH:=0f38b83639958ce1152d02a7f062902c41c8fd20d558b0c34344292d417ae272

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING
PKG_MAINTAINER:=Jeffery To <jeffery.to@gmail.com>

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-jsonschema-specifications
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=JSON Schema meta-schemas and vocabularies
  URL:=https://github.com/python-jsonschema/jsonschema-specifications
  DEPENDS:=+python3-light +python3-referencing
endef

define Package/python3-jsonschema-specifications/description
JSON support files from the JSON Schema Specifications (metaschemas,
vocabularies, etc.), packaged for runtime access from Python as a
referencing-based Schema Registry.
endef

$(eval $(call Py3Package,python3-jsonschema-specifications))
$(eval $(call BuildPackage,python3-jsonschema-specifications))
$(eval $(call BuildPackage,python3-jsonschema-specifications-src))
