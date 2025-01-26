include $(TOPDIR)/rules.mk

PKG_NAME:=python-yeelight
PKG_VERSION:=0.7.14
PKG_RELEASE:=1

PYPI_NAME:=yeelight
PKG_HASH:=252031ecba32fa7395cacbb2efdd5f278b9903238a9ac0e66a59389550ab6e1c

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD 2-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-yeelight
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A Python library for controlling YeeLight RGB bulbs.
  URL:=https://gitlab.com/stavros/python-yeelight
  DEPENDS:=+python3 +python3-future +python3-ifaddr +python3-async-timeout
endef

define Package/python3-yeelight/description
  yeelight is a simple Python library that allows you to control YeeLight WiFi RGB LED bulbs through your LAN.
endef

$(eval $(call Py3Package,python3-yeelight))
$(eval $(call BuildPackage,python3-yeelight))
$(eval $(call BuildPackage,python3-yeelight-src))
