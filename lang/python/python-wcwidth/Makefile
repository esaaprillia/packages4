#
# Copyright (C) 2019-2020 CZ.NIC z.s.p.o. (http://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-wcwidth
PKG_VERSION:=0.2.13
PKG_RELEASE:=1

PYPI_NAME:=wcwidth
PKG_HASH:=72ea0c06399eb286d978fdedb6923a9eb47e1c486ce63e9b4e64fc18303972b5

PKG_MAINTAINER:=Jan Pavlinec <jan.pavlinec1@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-wcwidth
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Terminal width calculation library
  URL:=https://github.com/jquast/wcwidth
  DEPENDS:=+python3-light
endef

define Package/python3-wcwidth/description
Python library that measures the width of unicode strings rendered to a
terminal
endef

$(eval $(call Py3Package,python3-wcwidth))
$(eval $(call BuildPackage,python3-wcwidth))
$(eval $(call BuildPackage,python3-wcwidth-src))
