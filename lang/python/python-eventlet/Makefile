#
# Copyright (C) 2021 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-eventlet
PKG_VERSION:=0.38.1
PKG_RELEASE:=1

PYPI_NAME:=eventlet
PKG_HASH:=ae23e3eb455facf0802df30c55da4ffbbf72e952757efa2197a1b47901255b1f

PKG_MAINTAINER:=Jan Pavlinec <jan.pavlinec1@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-eventlet
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python concurrent networking library
  URL:=https://eventlet.net/
  DEPENDS:= \
	+python3-light \
	+python3-six \
	+python3-dns \
	+python3-greenlet \
	+python3-email \
	+python3-logging \
	+python3-openssl \
	+python3-urllib
endef

define Package/python3-eventlet/description
  Eventlet is a concurrent networking library for Python that
  allows you to change how you run your code, not how you write it.
endef

$(eval $(call Py3Package,python3-eventlet))
$(eval $(call BuildPackage,python3-eventlet))
$(eval $(call BuildPackage,python3-eventlet-src))
