include $(TOPDIR)/rules.mk

PKG_NAME:=python-unifi-ap
PKG_VERSION:=0.0.2
PKG_RELEASE:=1

PYPI_NAME:=unifi_ap
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-unifi-ap
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python API for UniFi accesspoints
  URL:=https://github.com/tofuSCHNITZEL/unifi_ap
  DEPENDS:=+python3 +python3-paramiko
endef

define Package/python3-unifi-ap/description
Python API for UniFi accesspoints
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-unifi-ap))
$(eval $(call BuildPackage,python3-unifi-ap))
$(eval $(call BuildPackage,python3-unifi-ap-src))
