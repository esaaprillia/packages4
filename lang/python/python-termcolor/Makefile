include $(TOPDIR)/rules.mk

PKG_NAME:=python-termcolor
PKG_VERSION:=2.5.0
PKG_RELEASE:=1

PYPI_NAME:=termcolor
PKG_HASH:=998d8d27da6d48442e8e1f016119076b690d962507531df4890fcd2db2ef8a6f

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING.txt

HOST_BUILD_DEPENDS:=python-hatch-vcs/host
PKG_BUILD_DEPENDS:=python-hatch-vcs/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-termcolor
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=ANSI color formatting for output in terminal
  URL:=https://github.com/termcolor/termcolor
  DEPENDS:=+python3
endef

define Package/python3-termcolor/description
ANSI color formatting for output in terminal
endef

$(eval $(call Py3Package,python3-termcolor))
$(eval $(call BuildPackage,python3-termcolor))
$(eval $(call BuildPackage,python3-termcolor-src))
$(eval $(call HostBuild))
