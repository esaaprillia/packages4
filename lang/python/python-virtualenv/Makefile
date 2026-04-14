include $(TOPDIR)/rules.mk

PKG_NAME:=python-virtualenv
PKG_VERSION:=21.2.3
PKG_RELEASE:=1

PYPI_NAME:=virtualenv
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host python-distlib/host python-filelock/host python-platformdirs/host
HOST_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host python-distlib/host python-filelock/host python-platformdirs/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-virtualenv
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Virtual Python Environment builder
  URL:=https://virtualenv.pypa.io/
  DEPENDS:=+python3-light +python3-distlib +python3-filelock +python3-platformdirs
endef

define Package/python3-virtualenv/description
A tool for creating isolated virtual python environments.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-virtualenv))
$(eval $(call BuildPackage,python3-virtualenv))
$(eval $(call BuildPackage,python3-virtualenv-src))
