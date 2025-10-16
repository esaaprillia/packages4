include $(TOPDIR)/rules.mk

PKG_NAME:=python-pytap2
PKG_VERSION:=2.3.0
PKG_RELEASE:=1

PYPI_NAME:=pytap2
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:= MIT
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pytap2
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Object-oriented wrapper around the Linux Tun/Tap device
  URL:=https://github.com/johnthagen/pytap2
  DEPENDS:=+python3
endef

define Package/python3-pytap2/description
  The ifconfig command line utility must be installed for pytap2 to operate.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pytap2))
$(eval $(call BuildPackage,python3-pytap2))
$(eval $(call BuildPackage,python3-pytap2-src))
