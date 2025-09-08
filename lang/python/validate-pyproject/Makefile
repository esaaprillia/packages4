include $(TOPDIR)/rules.mk

PKG_NAME:=validate-pyproject
PKG_VERSION:=0.24.1
PKG_RELEASE:=1

PYPI_NAME:=validate_pyproject
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MPL-2.0 MIT BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-validate-pyproject
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Validation library and CLI tool for checking on 'pyproject.toml' files using JSON Schema
  URL:=https://validate-pyproject.readthedocs.io/
  DEPENDS:=+python3 +python3-fastjsonschema
endef

define Package/python3-validate-pyproject/description
With the approval of PEP 517 and PEP 518, the Python community shifted towards a strong focus on standardisation for packaging software, which allows more freedom when choosing tools during development and make sure packages created using different technologies can interoperate without the need for custom installation procedures.
This shift became even more clear when PEP 621 was also approved, as a standardised way of specifying project metadata and dependencies.
validate-pyproject was born in this context, with the mission of validating pyproject.toml files, and make sure they are compliant with the standards and PEPs. Behind the scenes, validate-pyproject relies on JSON Schema files, which, in turn, are also a standardised way of checking if a given data structure complies with a certain specification.
endef

$(eval $(call Py3Package,python3-validate-pyproject))
$(eval $(call BuildPackage,python3-validate-pyproject))
$(eval $(call BuildPackage,python3-validate-pyproject-src))
$(eval $(call HostBuild))
