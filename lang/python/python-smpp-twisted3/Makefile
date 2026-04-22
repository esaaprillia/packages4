include $(TOPDIR)/rules.mk

PKG_NAME:=python-smpp-twisted3
PKG_VERSION:=0.8
PKG_RELEASE:=1

PYPI_NAME:=smpp.twisted3
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-smpp-twisted3
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=SMPP 3.4 client built on Twisted / Python3
  URL:=https://github.com/jookies/smpp.twisted
  DEPENDS:= \
	+python3 \
	+python3-twisted \
	+python3-smpp-pdu3
endef

define Package/python3-smpp-twisted3/description
SMPP 3.4 client built on Twisted
endef

PYTHON3_PKG_WHEEL_NAME:=smpp_twisted3
PYTHON3_PKG_WHEEL_VERSION:=0.8

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-smpp-twisted3))
$(eval $(call BuildPackage,python3-smpp-twisted3))
$(eval $(call BuildPackage,python3-smpp-twisted3-src))
