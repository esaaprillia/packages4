#
# Copyright (C) 2019-2020 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-flask-session
PKG_VERSION:=0.8.0
PKG_RELEASE:=1

PYPI_NAME:=flask_session
PKG_HASH:=20e045eb01103694e70be4a49f3a80dbb1b57296a22dc6f44bbf3f83ef0742ff

PKG_MAINTAINER:=Josef Schlehofer <pepe.schlehofer@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-flask-session
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Flask Session
  URL:=https://github.com/fengsp/flask-session
  DEPENDS:= \
    +python3-cachelib \
    +python3-flask \
    +python3-light
endef

define Package/python3-flask-session/description
  Adds server-side session support to your Flask application.
endef

$(eval $(call Py3Package,python3-flask-session))
$(eval $(call BuildPackage,python3-flask-session))
$(eval $(call BuildPackage,python3-flask-session-src))
