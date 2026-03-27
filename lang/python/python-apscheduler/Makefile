include $(TOPDIR)/rules.mk

PKG_NAME:=python-apscheduler
PKG_VERSION:=3.11.2
PKG_RELEASE:=1

PYPI_NAME:=apscheduler
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-apscheduler
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=In-process task scheduler with Cron-like capabilities
  URL:=https://github.com/agronholm/apscheduler
  DEPENDS:=+python3 +python3-tzlocal
endef

define Package/python3-apscheduler/description
Advanced Python Scheduler (APScheduler) is a Python library that lets you schedule your Python code to be executed later, either just once or periodically. You can add new jobs or remove old ones on the fly as you please.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-apscheduler))
$(eval $(call BuildPackage,python3-apscheduler))
$(eval $(call BuildPackage,python3-apscheduler-src))
