include $(TOPDIR)/rules.mk

PKG_NAME:=python-queuelib
PKG_VERSION:=1.9.0
PKG_RELEASE:=1

PYPI_NAME:=queuelib
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-queuelib
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Collection of persistent (disk-based) and non-persistent (memory-based) queues
  URL:=https://github.com/scrapy/queuelib
  DEPENDS:= \
	+python3
endef

define Package/python3-queuelib/description
  Queuelib is a Python library that implements object collections which are stored in memory or persisted to disk, provide a simple API, and run fast.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-queuelib))
$(eval $(call BuildPackage,python3-queuelib))
$(eval $(call BuildPackage,python3-queuelib-src))
