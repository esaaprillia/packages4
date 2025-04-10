#
# Copyright (C) 2017-2020 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-msgpack
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PYPI_NAME:=msgpack
PKG_HASH:=dd432ccc2c72b914e4cb77afce64aab761c1137cc698be3984eee260bcb2896e

PKG_MAINTAINER:=Jan Pavlinec <jan.pavlinec1@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=COPYING

HOST_BUILD_DEPENDS:=python-cython/host
PKG_BUILD_DEPENDS:=python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-msgpack
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=MessagePack serializer
  URL:=https://msgpack.org/
  DEPENDS:=+python3-light +libstdcpp
endef

define Package/python3-msgpack/description
  MessagePack is an efficient binary serialization format.
  It lets you exchange data among multiple languages like JSON.
endef

$(eval $(call Py3Package,python3-msgpack))
$(eval $(call BuildPackage,python3-msgpack))
$(eval $(call BuildPackage,python3-msgpack-src))
$(eval $(call HostBuild))
