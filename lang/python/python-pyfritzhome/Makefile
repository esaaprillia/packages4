include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyfritzhome
PKG_VERSION:=0.6.18
PKG_RELEASE:=1

PYPI_NAME:=pyfritzhome
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pyfritzhome
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Fritz!Box Smarthome Python Library
  URL:=https://github.com/hthiery/python-fritzhome
  DEPENDS:=+python3 +python3-requests +python3-cryptography
endef

define Package/python3-pyfritzhome/description
You have to add a user with the rights to access the smarthome actors.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pyfritzhome))
$(eval $(call BuildPackage,python3-pyfritzhome))
$(eval $(call BuildPackage,python3-pyfritzhome-src))
