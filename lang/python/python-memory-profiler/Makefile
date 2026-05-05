include $(TOPDIR)/rules.mk

PKG_NAME:=python-memory-profiler
PKG_VERSION:=0.61.0
PKG_RELEASE:=1

PYPI_NAME:=memory_profiler
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD
PKG_LICENSE_FILES:=COPYING

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-psutil/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-memory-profiler
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A module for monitoring memory usage of a python program
  URL:=https://github.com/pythonprofilers/memory_profiler
  DEPENDS:=+python3 +python3-psutil
endef

define Package/python3-memory-profiler/description
This is a python module for monitoring memory consumption of a process as well as line-by-line analysis of memory consumption for python programs.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-memory-profiler))
$(eval $(call BuildPackage,python3-memory-profiler))
$(eval $(call BuildPackage,python3-memory-profiler-src))
