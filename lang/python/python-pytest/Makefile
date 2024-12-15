#
# Copyright (C) 2020-2021 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-pytest
PKG_VERSION:=8.3.4
PKG_RELEASE:=1

PYPI_NAME:=pytest
PKG_HASH:=965370d062bce11e73868e0335abac31b4d3de0e82f4007408d242b4f8610761

PKG_MAINTAINER:=Jan Pavlinec <jan.pavlinec1@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pytest
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python testing framework
  URL:=https://pytest.org/
  DEPENDS:= \
	+python3 \
	+python3-iniconfig \
	+python3-packaging \
	+python3-pluggy
endef

define Package/python3-pytest/description
The pytest framework makes it easy to write small tests, yet scales to
support complex functional testing for applications and libraries.
endef

$(eval $(call Py3Package,python3-pytest))
$(eval $(call BuildPackage,python3-pytest))
$(eval $(call BuildPackage,python3-pytest-src))
