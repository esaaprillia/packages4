include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyproject-api
PKG_VERSION:=1.8.0
PKG_RELEASE:=1

PYPI_NAME:=pyproject_api
PKG_HASH:=77b8049f2feb5d33eefcc21b57f1e279636277a8ac8ad6b5871037b243778496

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyproject-api
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=pyproject-api
  URL:=https://pyproject-api.readthedocs.io/en/latest/
  DEPENDS:=+python3-light +python3-packaging +python3-tomli
endef

define Package/python3-pyproject-api/description
API to interact with the python pyproject.toml based projects
endef

$(eval $(call Py3Package,python3-pyproject-api))
$(eval $(call BuildPackage,python3-pyproject-api))
$(eval $(call BuildPackage,python3-pyproject-api-src))
