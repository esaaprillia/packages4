#
# Copyright (C) 2021 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-flask-socketio
PKG_VERSION:=5.4.1
PKG_RELEASE:=1

PYPI_NAME:=flask_socketio
PKG_HASH:=2e9b8864a5be37ca54f6c76a4d06b1ac5e0df61fde12d03afc81ab4057e1eb86

PKG_MAINTAINER:=Jan Pavlinec <jan.pavlinec1@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-flask-socketio
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Socket.IO integration for Flask
  URL:=https://github.com/miguelgrinberg/Flask-SocketIO/
  DEPENDS:= \
	+python3-light \
	+python3-flask \
	+python3-socketio
endef

define Package/python3-flask-socketio/description
  Flask-SocketIO gives Flask applications access to low latency
  bi-directional communications between the clients and the server.
endef

PYTHON3_PKG_WHEEL_NAME:=Flask_SocketIO
PYTHON3_PKG_WHEEL_VERSION:=5.4.1

$(eval $(call Py3Package,python3-flask-socketio))
$(eval $(call BuildPackage,python3-flask-socketio))
$(eval $(call BuildPackage,python3-flask-socketio-src))
