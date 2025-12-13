include $(TOPDIR)/rules.mk

PKG_NAME:=python-pytest-ruff
PKG_VERSION:=0.5
PKG_RELEASE:=1

PYPI_NAME:=pytest_ruff
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-dynamic-versioning/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pytest-ruff
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A pytest plugin to run ruff.
  URL:=https://github.com/businho/pytest-ruff
  DEPENDS:=+python3
endef

define Package/python3-pytest-ruff/description
pytest plugin to check ruff requirements.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pytest-ruff))
$(eval $(call BuildPackage,python3-pytest-ruff))
$(eval $(call BuildPackage,python3-pytest-ruff-src))
