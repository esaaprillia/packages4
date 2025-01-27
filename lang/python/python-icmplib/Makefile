include $(TOPDIR)/rules.mk

PKG_NAME:=python-icmplib
PKG_VERSION:=3.0.4
PKG_RELEASE:=1

PYPI_NAME:=icmplib
PKG_HASH:=57868f2cdb011418c0e1d5586b16d1fabd206569fe9652654c27b6b2d6a316de

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-3.0-or-later
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-icmplib
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=implementation of the ICMP protocol
  URL:=https://github.com/ValentinBELYN/icmplib
  DEPENDS:=+python3-asyncio
endef

define Package/python3-icmplib/description
  Easily forge ICMP packets and make your own ping and traceroute.
endef

$(eval $(call Py3Package,python3-icmplib))
$(eval $(call BuildPackage,python3-icmplib))
$(eval $(call BuildPackage,python3-icmplib-src))
