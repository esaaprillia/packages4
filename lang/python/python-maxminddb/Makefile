#
# Copyright (C) 2019-2020 CZ.NIC z.s.p.o. (http://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-maxminddb
PKG_VERSION:=2.6.2
PKG_RELEASE:=1

PYPI_NAME:=maxminddb
PKG_HASH:=7d842d32e2620abc894b7d79a5a1007a69df2c6cf279a06b94c9c3913f66f264

PKG_MAINTAINER:=Jan Pavlinec <jan.pavlinec1@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-maxminddb
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Reader for the MaxMind DB format
  URL:=https://www.maxmind.com/
  DEPENDS:=+python3-light +libmaxminddb
endef

define Package/python3-maxminddb/description
  Module for reading MaxMind DB files
endef

$(eval $(call Py3Package,python3-maxminddb))
$(eval $(call BuildPackage,python3-maxminddb))
$(eval $(call BuildPackage,python3-maxminddb-src))
