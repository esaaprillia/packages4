#
# Copyright (C) 2023 Jeffery To
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-argcomplete
PKG_VERSION:=3.5.2
PKG_RELEASE:=1

PYPI_NAME:=argcomplete
PKG_HASH:=23146ed7ac4403b70bd6026402468942ceba34a6732255b9edf5b7354f68a6bb

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.rst
PKG_MAINTAINER:=Jeffery To <jeffery.to@gmail.com>

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-argcomplete
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Bash tab completion for argparse
  URL:=https://github.com/kislyuk/argcomplete
  DEPENDS:=+python3-light
endef

define Package/python3-argcomplete/description
Argcomplete provides easy, extensible command line tab completion of
arguments for your Python application.
endef

$(eval $(call Py3Package,python3-argcomplete))
$(eval $(call BuildPackage,python3-argcomplete))
$(eval $(call BuildPackage,python3-argcomplete-src))
