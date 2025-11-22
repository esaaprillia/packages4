include $(TOPDIR)/rules.mk

PKG_NAME:=python-miio
PKG_VERSION:=0.5.12
PKG_RELEASE:=1

PYPI_NAME:=python-miio
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-miio
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python library for interfacing with Xiaomi smart appliances
  URL:=https://github.com/rytilahti/python-miio
  DEPENDS:=+python3 +python3-click +python3-cryptography +python3-construct +python3-zeroconf +python3-attrs +python3-pytz +python3-appdirs +python3-tqdm +python3-netifaces +python3-micloud +python3-croniter +python3-defusedxml +python3-yaml
endef

define Package/python3-miio/description
This library (and its accompanying cli tool) can be used to interface with devices using Xiaomi’s miIO and MIoT protocols.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-miio))
$(eval $(call BuildPackage,python3-miio))
$(eval $(call BuildPackage,python3-miio-src))
