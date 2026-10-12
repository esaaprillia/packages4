include $(TOPDIR)/rules.mk

PKG_NAME:=python-universal-pathlib
PKG_VERSION:=0.3.10
PKG_RELEASE:=1

PYPI_NAME:=universal_pathlib
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-universal-pathlib
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=pathlib api extended to use fsspec backends
  URL:=https://github.com/fsspec/universal_pathlib
  DEPENDS:= \
	+python3-light \
	+python3-fsspec \
	+python3-pathlib-abc
endef

define Package/python3-universal-pathlib/description
Universal Pathlib is a Python library that extends the pathlib_abc.JoinablePath API to provide a pathlib.Path-like interface for a variety of backend filesystems via filesystem_spec.
endef

$(eval $(call Py3Package,python3-universal-pathlib))
$(eval $(call BuildPackage,python3-universal-pathlib))
$(eval $(call BuildPackage,python3-universal-pathlib-src))
