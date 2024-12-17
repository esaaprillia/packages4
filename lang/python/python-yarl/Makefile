#
# Copyright (C) 2019-2021 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=yarl
PKG_VERSION:=1.18.3
PKG_RELEASE:=1

PYPI_NAME:=$(PKG_NAME)
PKG_HASH:=ac1801c45cbf77b6c99242eeff4fffb5e4e73a800b5c4ad4fc0be5def634d2e1

PKG_MAINTAINER:=Josef Schlehofer <pepe.schlehofer@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-yarl
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Yet another URL library
  URL:=https://github.com/aio-libs/yarl
  DEPENDS:= \
  +python3-light \
  +python3-multidict \
  +python3-urllib \
  +python3-idna
endef

define Package/python3-yarl/description
Yet another URL library
endef

$(eval $(call Py3Package,python3-yarl))
$(eval $(call BuildPackage,python3-yarl))
$(eval $(call BuildPackage,python3-yarl-src))
