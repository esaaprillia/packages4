#
# Copyright (C) 2020 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-pluggy
PKG_VERSION:=1.5.0
PKG_RELEASE:=1

PYPI_NAME:=pluggy
PKG_HASH:=2cffa88e94fdc978c4c574f15f9e59b7f4201d439195c3715ca9e2486f1d0cf1

PKG_MAINTAINER:=Jan Pavlinec <jan.pavlinec1@gmail.com>, Jeffery To <jeffery.to@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools/host python-setuptools-scm/host
HOST_BUILD_DEPENDS:= \
	python3/host \
	python-build/host \
	python-installer/host \
	python-wheel/host \
	python-setuptools/host \
	python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pluggy
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Plugin and hook calling mechanisms for Python
  URL:=https://github.com/pytest-dev/pluggy
  DEPENDS:=+python3-light
endef

define Package/python3-pluggy/description
  A minimalist production ready plugin system for python
endef

$(eval $(call Py3Package,python3-pluggy))
$(eval $(call BuildPackage,python3-pluggy))
$(eval $(call BuildPackage,python3-pluggy-src))
$(eval $(call HostBuild))
