include $(TOPDIR)/rules.mk

PKG_NAME:=python-jsonschema
PKG_VERSION:=4.23.0
PKG_RELEASE:=1

PYPI_NAME:=jsonschema
PKG_HASH:=d71497fef26351a33265337fa77ffeb82423f3ea21283cd9467bb03999266bc4

PKG_MAINTAINER:=Javier Marcet <javier@marcet.info>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host python-hatch-fancy-pypi-readme/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-jsonschema
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=An implementation of JSON Schema validation
  URL:=https://github.com/python-jsonschema/jsonschema
  DEPENDS:= \
	  +python3-light \
	  +python3-decimal \
	  +python3-urllib \
	  +python3-uuid \
	  +python3-attrs \
	  +python3-jsonschema-specifications \
	  +python3-referencing \
	  +python3-rpds-py
endef

define Package/python3-jsonschema/description
  jsonschema is an implementation of JSON Schema validation for Python.
endef

$(eval $(call Py3Package,python3-jsonschema))
$(eval $(call BuildPackage,python3-jsonschema))
$(eval $(call BuildPackage,python3-jsonschema-src))
