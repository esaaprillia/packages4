#
# Copyright (C) 2022 Julien Malik <julien.malik@paraiso.me>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-outcome
PKG_VERSION:=1.3.0
PKG_RELEASE:=1

PYPI_NAME:=outcome
PKG_HASH:=9dcf02e65f2971b80047b377468e72a268e15c0af3cf1238e6ff14f7f91143b8

PKG_LICENSE:=Apache-2.0|MIT
PKG_LICENSE_FILES:=LICENSE.APACHE2|LICENSE.MIT
PKG_MAINTAINER:=Julien Malik <julien.malik@paraiso.me>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-outcome
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Capture the outcome of Python function calls.
  URL:=https://outcome.readthedocs.io
  DEPENDS:= \
    +python3-light \
    +python3-attrs
endef

define Package/python3-outcome/description
  Capture the outcome of Python function calls. Extracted from the Trio project.
endef

$(eval $(call Py3Package,python3-outcome))
$(eval $(call BuildPackage,python3-outcome))
$(eval $(call BuildPackage,python3-outcome-src))
