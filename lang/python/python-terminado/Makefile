include $(TOPDIR)/rules.mk

PKG_NAME:=python-terminado
PKG_VERSION:=0.18.1
PKG_RELEASE:=1

PYPI_NAME:=terminado
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host
HOST_BUILD_DEPENDS:=python-hatchling/host python-ptyprocess/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-terminado
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Terminals served by tornado websockets
  URL:=http://terminado.readthedocs.org/
  DEPENDS:=+python3 +python3-tornado +python3-ptyprocess
endef

define Package/python3-terminado/description
  This is a Tornado websocket backend for the Xterm.js Javascript terminal emulator library.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-terminado))
$(eval $(call BuildPackage,python3-terminado))
$(eval $(call BuildPackage,python3-terminado-src))
