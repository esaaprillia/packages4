include $(TOPDIR)/rules.mk

PKG_NAME:=python-arrow
PKG_VERSION:=1.4.0
PKG_RELEASE:=1

PYPI_NAME:=arrow
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-flit-core/host
HOST_BUILD_DEPENDS:=python-flit-core/host python-dateutil/host python-tzdata/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-arrow
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Better dates & times for Python
  URL:=https://arrow.readthedocs.io/
  DEPENDS:=+python3 +python3-dateutil +python3-tzdata
endef

define Package/python3-arrow/description
Arrow is a Python library that offers a sensible and human-friendly approach to creating, manipulating, formatting and converting dates, times and timestamps. It implements and updates the datetime type, plugging gaps in functionality and providing an intelligent module API that supports many common creation scenarios. Simply put, it helps you work with dates and times with fewer imports and a lot less code.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-arrow))
$(eval $(call BuildPackage,python3-arrow))
$(eval $(call BuildPackage,python3-arrow-src))
