#
# Copyright (C) 2021 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-engineio
PKG_VERSION:=4.10.1
PKG_RELEASE:=1

PYPI_NAME:=python-engineio
PKG_HASH:=166cea8dd7429638c5c4e3a4895beae95196e860bc6f29ed0b9fe753d1ef2072

PKG_MAINTAINER:=Jan Pavlinec <jan.pavlinec1@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_CPE_ID:=cpe:/a:python-engineio_project:python-engineio

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-engineio
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Engine.IO server and client
  URL:=https://github.com/miguelgrinberg/python-engineio
  DEPENDS:= \
	+python3-light \
	+python3-asyncio \
	+python3-logging \
	+python3-openssl \
	+python3-urllib
endef

define Package/python3-engineio/description
  Python implementation of the Engine.IO realtime client and server.
endef

$(eval $(call Py3Package,python3-engineio))
$(eval $(call BuildPackage,python3-engineio))
$(eval $(call BuildPackage,python3-engineio-src))
