include $(TOPDIR)/rules.mk

PKG_NAME:=python-jsonschema
PKG_VERSION:=4.26.0
PKG_RELEASE:=1

PYPI_NAME:=jsonschema
PKG_HASH:=skip

PKG_MAINTAINER:=Javier Marcet <javier@marcet.info>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host python-hatch-fancy-pypi-readme/host
HOST_BUILD_DEPENDS:= \
	python3/host \
	python-hatchling/host \
	python-hatch-vcs/host \
	python-hatch-fancy-pypi-readme/host \
	python-attrs/host \
	python-jsonschema-specifications/host \
	python-referencing/host \
	python-rpds-py/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

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

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-jsonschema))
$(eval $(call BuildPackage,python3-jsonschema))
$(eval $(call BuildPackage,python3-jsonschema-src))
