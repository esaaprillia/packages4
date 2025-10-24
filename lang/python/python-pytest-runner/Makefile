include $(TOPDIR)/rules.mk

PKG_NAME:=python-pytest-runner
PKG_VERSION:=6.0.1
PKG_RELEASE:=1

PYPI_NAME:=pytest-runner
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pytest-runner
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Invoke py.test as distutils command with dependency resolution
  URL:=https://github.com/pytest-dev/pytest-runner
  DEPENDS:=+python3
endef

define Package/python3-pytest-runner/description
Setup scripts can use pytest-runner to add setup.py test support for pytest runner.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pytest-runner))
$(eval $(call BuildPackage,python3-pytest-runner))
$(eval $(call BuildPackage,python3-pytest-runner-src))
