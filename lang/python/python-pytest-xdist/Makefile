#
# Copyright (C) 2020-2021 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-pytest-xdist
PKG_VERSION:=3.6.1
PKG_RELEASE:=1

PYPI_NAME:=pytest-xdist
PKG_HASH:=ead156a4db231eec769737f57668ef58a2084a34b2e55c4a8fa20d861107300d

PKG_MAINTAINER:=Jan Pavlinec <jan.pavlinec1@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pytest-xdist
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=pytest plugin for distributed testing
  URL:=https://github.com/pytest-dev/pytest-xdist
  DEPENDS:= \
	+python3-light \
	+python3-uuid \
	+python3-execnet \
	+python3-pytest
endef

define Package/python3-pytest-xdist/description
The pytest-xdist plugin extends pytest with new test execution modes,
the most used being distributing tests across multiple CPUs to speed up
test execution.
endef

$(eval $(call Py3Package,python3-pytest-xdist))
$(eval $(call BuildPackage,python3-pytest-xdist))
$(eval $(call BuildPackage,python3-pytest-xdist-src))
