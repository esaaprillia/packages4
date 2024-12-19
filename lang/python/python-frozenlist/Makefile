#
# Copyright (C) 2023 Jeffery To
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-frozenlist
PKG_VERSION:=1.5.0
PKG_RELEASE:=1

PYPI_NAME:=frozenlist
PKG_HASH:=81d5af29e61b9c8348e876d442253723928dce6433e0e76cd925cd83f1b4b817

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Jeffery To <jeffery.to@gmail.com>

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-expandvars/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-frozenlist
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=List-like structure
  URL:=https://github.com/aio-libs/frozenlist
  DEPENDS:=+python3-light
endef

define Package/python3-frozenlist/description
frozenlist.FrozenList is a list-like structure which implements
collections.abc.MutableSequence. The list is mutable until
FrozenList.freeze is called, after which list modifications raise
RuntimeError.
endef

$(eval $(call Py3Package,python3-frozenlist))
$(eval $(call BuildPackage,python3-frozenlist))
$(eval $(call BuildPackage,python3-frozenlist-src))
