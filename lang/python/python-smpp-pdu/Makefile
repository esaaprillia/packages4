include $(TOPDIR)/rules.mk

PKG_NAME:=smpp.pdu
PKG_VERSION:=0.3
PKG_RELEASE:=1

#PYPI_NAME:=smpp.pdu3
#PKG_HASH:=skip

PKG_SOURCE_URL:=https://github.com/hologram-io/smpp.pdu.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=20acc840ded958898eeb35ae9a18df9b29bdaaac
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-smpp-pdu
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Library for parsing Protocol Data Units (PDUs) in SMPP protocol
  URL:=https://github.com/jookies/smpp.pdu
  DEPENDS:= \
	+python3
endef

define Package/python3-smpp-pdu/description
smpp.pdu is a Python library for parsing Protocol Data Units (PDUs) in SMPP protocol
endef

PYTHON3_PKG_WHEEL_NAME:=smpp_pdu
PYTHON3_PKG_WHEEL_VERSION:=0.3

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-smpp-pdu))
$(eval $(call BuildPackage,python3-smpp-pdu))
$(eval $(call BuildPackage,python3-smpp-pdu-src))
