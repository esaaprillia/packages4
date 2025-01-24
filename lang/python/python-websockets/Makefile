#
# Copyright (C) 2018-2022 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-websockets
PKG_VERSION:=14.2
PKG_RELEASE:=1

PYPI_NAME:=websockets
PKG_HASH:=5059ed9c54945efb321f097084b4c7e52c246f2c869815876a69d1efc4ad6eb5

PKG_MAINTAINER:=Michal Vasilek <michal.vasilek@nic.cz>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-websockets
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Implementation of the WebSocket Protocol
  URL:=https://github.com/aaugustin/websockets
  DEPENDS:=+python3
endef

define Package/python3-websockets/description
websockets is a library for building WebSocket servers and clients in
Python with a focus on correctness, simplicity, robustness, and
performance.

Built on top of asyncio, Python's standard asynchronous I/O framework,
the default implementation provides an elegant coroutine-based API.
endef

$(eval $(call Py3Package,python3-websockets))
$(eval $(call BuildPackage,python3-websockets))
$(eval $(call BuildPackage,python3-websockets-src))
