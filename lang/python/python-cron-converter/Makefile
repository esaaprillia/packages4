include $(TOPDIR)/rules.mk

PKG_NAME:=python-cron-converter
PKG_VERSION:=1.2.2
PKG_RELEASE:=1

PYPI_NAME:=cron_converter
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-cron-converter
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Cron string parser and scheduler for Python
  URL:=https://github.com/Sonic0/cron-converter
  DEPENDS:=+python3 +python3-dateutil
endef

define Package/python3-cron-converter/description
Cron-converter provides a Cron string parser ( from string/lists to string/lists ) and iteration for the datetime object with a cron like format.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-cron-converter))
$(eval $(call BuildPackage,python3-cron-converter))
$(eval $(call BuildPackage,python3-cron-converter-src))
