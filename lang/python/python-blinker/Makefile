include $(TOPDIR)/rules.mk

PKG_NAME:=python-blinker
PKG_VERSION:=1.9.0
PKG_RELEASE:=1

PYPI_NAME:=blinker
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-flit-core/host
HOST_BUILD_DEPENDS:=python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-blinker
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Fast, simple object-to-object and broadcast signaling
  URL:=https://blinker.readthedocs.io/
  DEPENDS:=+python3
endef

define Package/python3-blinker/description
  Blinker provides a fast dispatching system that allows any number of interested parties to subscribe to events, or "signals".
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-blinker))
$(eval $(call BuildPackage,python3-blinker))
$(eval $(call BuildPackage,python3-blinker-src))
