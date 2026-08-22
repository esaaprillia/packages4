include $(TOPDIR)/rules.mk

PKG_NAME:=python-filelock
PKG_VERSION:=3.32.3
PKG_RELEASE:=1

PYPI_NAME:=filelock
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host
HOST_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-filelock
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A platform independent file lock.
  URL:=https://py-filelock.readthedocs.io/
  DEPENDS:=+python3-light
endef

define Package/python3-filelock/description
This package contains a single module, which implements a platform independent file lock in Python, which provides a simple way of inter-process communication
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-filelock))
$(eval $(call BuildPackage,python3-filelock))
$(eval $(call BuildPackage,python3-filelock-src))
