include $(TOPDIR)/rules.mk

PKG_NAME:=python-smpp-pdu3
PKG_VERSION:=0.6
PKG_RELEASE:=1

PYPI_NAME:=smpp.pdu3
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-smpp-pdu3
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python3 Library for parsing Protocol Data Units (PDUs) in SMPP protocol
  URL:=https://github.com/jookies/smpp.pdu
  DEPENDS:= \
	+python3
endef

define Package/python3-smpp-pdu3/description
smpp.pdu is a Python library for parsing Protocol Data Units (PDUs) in SMPP protocol
endef

PYTHON3_PKG_WHEEL_NAME:=smpp_pdu3
PYTHON3_PKG_WHEEL_VERSION:=0.6

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-smpp-pdu3))
$(eval $(call BuildPackage,python3-smpp-pdu3))
$(eval $(call BuildPackage,python3-smpp-pdu3-src))
