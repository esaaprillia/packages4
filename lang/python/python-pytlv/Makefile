include $(TOPDIR)/rules.mk

PKG_NAME:=python-pytlv
PKG_VERSION:=0.71
PKG_RELEASE:=1

PYPI_NAME:=pytlv
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPLv2
PKG_LICENSE_FILES:=

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pytlv
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=TLV(tag length lavue) data parser, especially useful for EMV tags parsing
  URL:=https://github.com/timgabets/pytlv
  DEPENDS:= \
	+python3
endef

define Package/python3-pytlv/description
TLV (tag length lavue) data parser, especially useful for [EMV](http://emvco.com) tags parsing
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pytlv))
$(eval $(call BuildPackage,python3-pytlv))
$(eval $(call BuildPackage,python3-pytlv-src))
