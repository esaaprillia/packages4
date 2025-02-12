#
# Copyright (C) 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-bottle
PKG_VERSION:=0.13.2
PKG_RELEASE:=1

PYPI_NAME:=bottle
PKG_HASH:=e53803b9d298c7d343d00ba7d27b0059415f04b9f6f40b8d58b5bf914ba9d348

PKG_MAINTAINER:=Josef Schlehofer <pepe.schlehofer@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_CPE_ID:=cpe:/a:bottlepy:bottle

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-bottle
	SECTION:=lang
	CATEGORY:=Languages
	SUBMENU:=Python
	TITLE:=Fast and simple WSGI-framework for small web-applications
	URL:=https://bottlepy.org
	DEPENDS:=+python3
endef

define Package/python3-bottle/description
 Bottle is a fast, simple and lightweight WSGI micro web-framework for Python.
 It is distributed as a single file module and has no dependencies other than the
 Python Standard Library.
endef

$(eval $(call Py3Package,python3-bottle))
$(eval $(call BuildPackage,python3-bottle))
$(eval $(call BuildPackage,python3-bottle-src))
