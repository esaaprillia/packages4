#
# Copyright (C) 2023 Jeffery To
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiosignal
PKG_VERSION:=1.3.2
PKG_RELEASE:=1

PYPI_NAME:=aiosignal
PKG_HASH:=a8c255c66fafb1e499c9351d0bf32ff2d8a0321595ebac3b93713656d2436f54

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Jeffery To <jeffery.to@gmail.com>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-aiosignal
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=List of registered asynchronous callbacks
  URL:=https://github.com/aio-libs/aiosignal
  DEPENDS:=+python3-light +python3-frozenlist
endef

define Package/python3-aiosignal/description
A project to manage callbacks in asyncio projects.
endef

$(eval $(call Py3Package,python3-aiosignal))
$(eval $(call BuildPackage,python3-aiosignal))
$(eval $(call BuildPackage,python3-aiosignal-src))
