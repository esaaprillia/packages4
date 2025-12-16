include $(TOPDIR)/rules.mk

PKG_NAME:=python-fritzconnection
PKG_VERSION:=1.15.0
PKG_RELEASE:=1

PYPI_NAME:=fritzconnection
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-fritzconnection
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Communicate with the AVM FRITZ!Box
  URL:=https://github.com/kbr/fritzconnection
  DEPENDS:=+python3 +python3-requests +python3-segno
endef

define Package/python3-fritzconnection/description
Python-Interface to communicate with the AVM Fritz!Box.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-fritzconnection))
$(eval $(call BuildPackage,python3-fritzconnection))
$(eval $(call BuildPackage,python3-fritzconnection-src))
