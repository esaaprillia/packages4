#
# Copyright (C) 2019 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyotp
PKG_VERSION:=2.9.0
PKG_RELEASE:=2

PYPI_NAME:=pyotp
PKG_HASH:=346b6642e0dbdde3b4ff5a930b664ca82abfa116356ed48cc42c7d6590d36f63

PKG_MAINTAINER:=Josef Schlehofer <pepe.schlehofer@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyotp
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=One-Time Password Library
  URL:=https://github.com/pyauth/pyotp
  DEPENDS:=+python3-light +python3-codecs +python3-urllib
endef

define Package/python3-pyotp/description
PyOTP is a Python library for generating and verifying one-time
passwords. It can be used to implement two-factor (2FA) or multi-factor
(MFA) authentication methods in web applications and in other systems
that require users to log in.
endef

$(eval $(call Py3Package,python3-pyotp))
$(eval $(call BuildPackage,python3-pyotp))
$(eval $(call BuildPackage,python3-pyotp-src))
