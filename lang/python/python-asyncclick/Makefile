include $(TOPDIR)/rules.mk

PKG_NAME:=python-asyncclick
PKG_VERSION:=8.3.0.7
PKG_RELEASE:=1

PYPI_NAME:=asyncclick
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-asyncclick
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Composable command line interface toolkit
  URL:=http://click.pocoo.org/
  DEPENDS:=+python3-light
endef

define Package/python3-asyncclick/description
Asyncclick is a fork of Click (described below) that works with trio or asyncio.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-asyncclick))
$(eval $(call BuildPackage,python3-asyncclick))
$(eval $(call BuildPackage,python3-asyncclick-src))
