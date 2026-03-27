include $(TOPDIR)/rules.mk

PKG_NAME:=python-setproctitle
PKG_VERSION:=1.3.7
PKG_RELEASE:=1

PYPI_NAME:=setproctitle
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.md

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-setproctitle
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A Python module to customize the process title
  URL:=https://github.com/dvarrazzo/py-setproctitle
  DEPENDS:=+python3 +libstdcpp
endef

define Package/python3-setproctitle/description
  The setproctitle module allows a process to change its title (as displayed by system tools such as ps, top or MacOS Activity Monitor).
endef

$(eval $(call Py3Package,python3-setproctitle))
$(eval $(call BuildPackage,python3-setproctitle))
$(eval $(call BuildPackage,python3-setproctitle-src))
