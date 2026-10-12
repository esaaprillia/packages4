include $(TOPDIR)/rules.mk

PKG_NAME:=python-toolz
PKG_VERSION:=1.2.0
PKG_RELEASE:=1

PYPI_NAME:=toolz
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-setuptools-git-versioning/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-toolz
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=List processing tools and functional utilities
  URL:=https://github.com/pytoolz/toolz
  DEPENDS:= \
	+python3-light
endef

define Package/python3-toolz/description
A set of utility functions for iterators, functions, and dictionaries.
endef

$(eval $(call Py3Package,python3-toolz))
$(eval $(call BuildPackage,python3-toolz))
$(eval $(call BuildPackage,python3-toolz-src))
