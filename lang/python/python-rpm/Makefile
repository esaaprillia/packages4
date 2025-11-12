include $(TOPDIR)/rules.mk

PKG_NAME:=python-rpm
PKG_VERSION:=0.4.0
PKG_RELEASE:=1

PYPI_NAME:=rpm
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-setuptools-scm-git-archive/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-rpm
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Shim RPM module for use in virtualenvs.
  URL:=https://github.com/packit/rpm-shim
  DEPENDS:=+python3
endef

define Package/python3-rpm/description
RPM Python bindings are tied to system RPM installation and are not available as a Python package (on PyPI or elsewhere). This shim module makes it possible to import and use the bindings in a virtualenv.
endef

$(eval $(call Py3Package,python3-rpm))
$(eval $(call BuildPackage,python3-rpm))
$(eval $(call BuildPackage,python3-rpm-src))
