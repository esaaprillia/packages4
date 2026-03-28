include $(TOPDIR)/rules.mk

PKG_NAME:=python-solarlog-cli
PKG_VERSION:=0.7.0
PKG_RELEASE:=1

PYPI_NAME:=solarlog_cli
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-solarlog-cli
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python library to access the Solar-Log
  URL:=https://www.solar-log.com/
  DEPENDS:=+python3 +python3-aiohttp +python3-bcrypt +python3-mashumaro
endef

define Package/python3-solarlog-cli/description
Python library to access a Solar-Log JSON interface.
endef

$(eval $(call Py3Package,python3-solarlog-cli))
$(eval $(call BuildPackage,python3-solarlog-cli))
$(eval $(call BuildPackage,python3-solarlog-cli-src))
