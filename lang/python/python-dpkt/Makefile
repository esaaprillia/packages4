include $(TOPDIR)/rules.mk

PKG_NAME:=python-dpkt
PKG_VERSION:=1.9.8
PKG_RELEASE:=1

PYPI_NAME:=dpkt
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-dpkt
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=simple packet creation / parsing
  URL:=https://github.com/kbandla/dpkt
  DEPENDS:=+python3-light
endef

define Package/python3-dpkt/description
The dpkt project is a python module for fast, simple packet parsing, with definitions for the basic TCP/IP protocols.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-dpkt))
$(eval $(call BuildPackage,python3-dpkt))
$(eval $(call BuildPackage,python3-dpkt-src))
