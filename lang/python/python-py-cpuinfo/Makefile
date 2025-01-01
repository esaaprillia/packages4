include $(TOPDIR)/rules.mk

PKG_NAME:=python-py-cpuinfo
PKG_VERSION:=9.0.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=py-cpuinfo
PKG_HASH:=3cdbbf3fac90dc6f118bfd64384f309edeadd902d7c8fb17f02ffa1fc3f49690

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-py-cpuinfo
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Get CPU info with pure Python
  URL:=https://github.com/workhorsy/py-cpuinfo
  DEPENDS:=+python3
endef

define Package/python3-py-cpuinfo/description
Py-cpuinfo gets CPU info with pure Python. Py-cpuinfo should work without any extra programs or libraries, beyond what your OS provides. It does not require any compilation(C/C++, assembly, et cetera) to use. It works with Python 3.
endef

$(eval $(call Py3Package,python3-py-cpuinfo))
$(eval $(call BuildPackage,python3-py-cpuinfo))
$(eval $(call BuildPackage,python3-py-cpuinfo-src))
$(eval $(call HostBuild))
