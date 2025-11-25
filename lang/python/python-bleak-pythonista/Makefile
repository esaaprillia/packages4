include $(TOPDIR)/rules.mk

PKG_NAME:=python-bleak-pythonista
PKG_VERSION:=0.1.2
PKG_RELEASE:=1

PYPI_NAME:=bleak_pythonista
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-bleak-pythonista
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=bleak compatible pythonista.cb backend
  URL:=https://github.com/o-murphy/bleak-pythonista
  DEPENDS:=+python3 +python3-bleak +python3-typing-extensions
endef

define Package/python3-bleak-pythonista/description
This module uses bleak backend API to implement a compatible solution for Pythonista iOS app. It uses Pythonista built-in _cb module, that is wrapper to iOS CoreBluetooth.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-bleak-pythonista))
$(eval $(call BuildPackage,python3-bleak-pythonista))
$(eval $(call BuildPackage,python3-bleak-pythonista-src))
