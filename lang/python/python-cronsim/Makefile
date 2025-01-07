include $(TOPDIR)/rules.mk

PKG_NAME:=python-cronsim
PKG_VERSION:=2.6
PKG_RELEASE:=1

PYPI_NAME:=cronsim
PKG_HASH:=5aab98716ef90ab5ac6be294b2c3965dbf76dc869f048846a0af74ebb506c10d

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-cronsim
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Cron expression parser and evaluator
  URL:=https://github.com/home-assistant-libs/ha-ffmpeg
  DEPENDS:=+python3-light
endef

define Package/python3-cronsim/description
Cron Sim(ulator), a cron expression parser and evaluator. Works with Python 3.8+. CronSim is written for and being used in Healthchecks (a cron job monitoring service).
endef

$(eval $(call Py3Package,python3-cronsim))
$(eval $(call BuildPackage,python3-cronsim))
$(eval $(call BuildPackage,python3-cronsim-src))
