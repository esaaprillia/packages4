include $(TOPDIR)/rules.mk

PKG_NAME:=python-shellingham
PKG_VERSION:=1.5.4
PKG_RELEASE:=1

PYPI_NAME:=shellingham
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=ISC
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-shellingham
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Tool to Detect Surrounding Shell
  URL:=https://github.com/sarugaku/shellingham
  DEPENDS:=+python3
endef

define Package/python3-shellingham/description
Shellingham detects what shell the current Python executable is running in.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-shellingham))
$(eval $(call BuildPackage,python3-shellingham))
$(eval $(call BuildPackage,python3-shellingham-src))
