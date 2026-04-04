include $(TOPDIR)/rules.mk

PKG_NAME:=smartinspectpython
PKG_VERSION:=3.0.38
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://github.com/thlucas1/SmartInspectPython.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=84385d58772701b5a6c07b160a1413580bb304fa
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-watchdog/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/smartinspectpython
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=SmartInspect Python3 Library
  URL:=https://smartinspectpython.readthedocs.io/
  DEPENDS:= \
	+python3-light \
	+python3-cryptodome \
	+python3-watchdog
endef

define Package/smartinspectpython/description
This API provides Python code execution tracing and diagnostics support via the SmartInspect library.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,smartinspectpython))
$(eval $(call BuildPackage,smartinspectpython))
$(eval $(call BuildPackage,smartinspectpython-src))
