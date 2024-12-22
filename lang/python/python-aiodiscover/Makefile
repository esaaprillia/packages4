include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiodiscover
PKG_VERSION:=2.1.0
PKG_RELEASE:=1

PYPI_NAME:=aiodiscover
PKG_HASH:=16d283c581f6d626c2fe0fc6fab3516033db60654ef943c972a542dfd217d46a

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-aiodiscover
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Discover hosts by arp and ptr lookup
  URL:=https://github.com/bdraco/aiodiscover
  DEPENDS:=+python3 +python3-async-timeout +python3-netifaces +python3-aiodns +python3-ifaddr +python3-pyroute2 +python3-cached-ipaddress
endef

define Package/python3-aiodiscover/description
Discover Hosts via ARP and PTR lookup
endef

$(eval $(call Py3Package,python3-aiodiscover))
$(eval $(call BuildPackage,python3-aiodiscover))
$(eval $(call BuildPackage,python3-aiodiscover-src))
