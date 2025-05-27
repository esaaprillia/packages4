#
# Copyright (C) 2023 Jeffery To
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-pip
PKG_VERSION:=25.0.1
PKG_RELEASE:=1

PYPI_NAME:=pip
PKG_HASH:=88f96547ea48b940a3a385494e181e29fb8637898f88d88737c5049780f196ea

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt
PKG_MAINTAINER:=Jeffery To <jeffery.to@gmail.com>
PKG_CPE_ID:=cpe:/a:pypa:pip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pip
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=PyPA recommended tool for installing Python packages
  URL:=https://pip.pypa.io/
  DEPENDS:=+python3
endef

define Package/python3-pip/description
pip is the package installer for Python. You can use pip to install
packages from the Python Package Index and other indexes.
endef

define Package/python3-pip/conffiles
/etc/pip.conf
endef

define Package/python3-pip/install
	$(INSTALL_DIR) $(1)/etc
	$(INSTALL_DATA) ./files/pip.conf $(1)/etc/
endef

$(eval $(call Py3Package,python3-pip))
$(eval $(call BuildPackage,python3-pip))
$(eval $(call BuildPackage,python3-pip-src))
