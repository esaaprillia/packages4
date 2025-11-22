include $(TOPDIR)/rules.mk

PKG_NAME:=python-croniter
PKG_VERSION:=6.0.0
PKG_RELEASE:=1

PYPI_NAME:=croniter
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-croniter
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=croniter provides iteration for datetime object with cron like format
  URL:=http://github.com/kiorky/croniter
  DEPENDS:=+python3 +python3-dateutil +python3-pytz
endef

define Package/python3-croniter/description
croniter provides iteration for the datetime object with a cron like format.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-croniter))
$(eval $(call BuildPackage,python3-croniter))
$(eval $(call BuildPackage,python3-croniter-src))
