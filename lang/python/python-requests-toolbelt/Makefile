include $(TOPDIR)/rules.mk

PKG_NAME:=python-requests-toolbelt
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=requests-toolbelt
PKG_HASH:=7681a0a3d047012b5bdc0ee37d7f8f07ebe76ab08caeccfc3921ce23c88d5bc6

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-requests-toolbelt
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A utility belt for advanced users of python-requests
  URL:=https://toolbelt.readthedocs.org/
  DEPENDS:=+python3 +python3-requests
endef

define Package/python3-requests-toolbelt/description
This is just a collection of utilities for python-requests, but don't really belong in requests proper. The minimum tested requests version is 2.1.0. In reality, the toolbelt should work with 2.0.1 as well, but some idiosyncracies prevent effective or sane testing on that version.
endef

$(eval $(call Py3Package,python3-requests-toolbelt))
$(eval $(call BuildPackage,python3-requests-toolbelt))
$(eval $(call BuildPackage,python3-requests-toolbelt-src))
