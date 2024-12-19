include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiodhcpwatcher
PKG_VERSION:=1.0.2
PKG_RELEASE:=1

PYPI_NAME:=aiodhcpwatcher
PKG_HASH:=0e5e6acbe34928eacaa85c5598aae0116ac13c5c796d7f44bc4859fe4903f570

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-aiodhcpwatcher
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Watch for DHCP packets with asyncio
  URL:=https://aiodhcpwatcher.readthedocs.io/
  DEPENDS:=+python3 +python3-scapy
endef

define Package/python3-aiodhcpwatcher/description
Watch for DHCP packets with asyncio
endef

$(eval $(call Py3Package,python3-aiodhcpwatcher))
$(eval $(call BuildPackage,python3-aiodhcpwatcher))
$(eval $(call BuildPackage,python3-aiodhcpwatcher-src))
