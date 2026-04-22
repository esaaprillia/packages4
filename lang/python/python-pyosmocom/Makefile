include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyosmocom
PKG_VERSION:=0.0.12
PKG_RELEASE:=1

PYPI_NAME:=pyosmocom
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=COPYING

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pyosmocom
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python implementation of core osmocom utilities / protocols
  URL:=https://osmocom.org/projects/pyosmocom/wiki
  DEPENDS:= \
	+python3 \
	+python3-gsm0338 \
	+python3-construct
endef

define Package/python3-pyosmocom/description
pyosmocom - python implementation of key Osmocom protocols/interfaces
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pyosmocom))
$(eval $(call BuildPackage,python3-pyosmocom))
$(eval $(call BuildPackage,python3-pyosmocom-src))
