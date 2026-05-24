include $(TOPDIR)/rules.mk

PKG_NAME:=python-fsspec
PKG_VERSION:=2026.4.0
PKG_RELEASE:=1

PYPI_NAME:=fsspec
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-fsspec
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=File-system specification
  URL:=https://filesystem-spec.readthedocs.io
  DEPENDS:=+python3
endef

define Package/python3-fsspec/description
would install the base fsspec. Various optionally supported features might require specification of custom extra require, e.g. pip install fsspec[ssh] will install dependencies for ssh backends support. Use pip install fsspec[full] for installation of all known extra dependencies.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-fsspec))
$(eval $(call BuildPackage,python3-fsspec))
$(eval $(call BuildPackage,python3-fsspec-src))
