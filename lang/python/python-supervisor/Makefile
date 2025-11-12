include $(TOPDIR)/rules.mk

PKG_NAME:=python-supervisor
PKG_VERSION:=4.3.0
PKG_RELEASE:=1

PYPI_NAME:=supervisor
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-derived
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-supervisor
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A system for controlling process state under UNIX
  URL:=http://supervisord.org/
  DEPENDS:=+python3
endef

define Package/python3-supervisor/description
Supervisor is a client/server system that allows its users to control a number of processes on UNIX-like operating systems.
endef

$(eval $(call Py3Package,python3-supervisor))
$(eval $(call BuildPackage,python3-supervisor))
$(eval $(call BuildPackage,python3-supervisor-src))
