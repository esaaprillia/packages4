#
# Copyright (C) 2015-2018 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyasn1-modules
PKG_VERSION:=0.4.1
PKG_RELEASE:=1

PYPI_NAME:=pyasn1_modules
PKG_HASH:=c28e2dbf9c06ad61c71a075c7e0f9fd0f1b0bb2d2ad4377f240d33ac2ab60a7c

PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE.txt
PKG_MAINTAINER:=Jeffery To <jeffery.to@gmail.com>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyasn1-modules
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Collection of ASN.1 modules
  URL:=https://github.com/etingof/pyasn1-modules
  DEPENDS:= \
      +python3-light \
      +python3-pyasn1
endef

define Package/python3-pyasn1-modules/description
This is a small but growing collection of ASN.1 data structures
expressed in Python terms using pyasn1 data model.
endef

$(eval $(call Py3Package,python3-pyasn1-modules))
$(eval $(call BuildPackage,python3-pyasn1-modules))
$(eval $(call BuildPackage,python3-pyasn1-modules-src))
