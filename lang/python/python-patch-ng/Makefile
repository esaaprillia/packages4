include $(TOPDIR)/rules.mk

PKG_NAME:=python-patch-ng
PKG_VERSION:=1.19.1
PKG_RELEASE:=1

PYPI_NAME:=patch-ng
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-patch-ng
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Library to parse and apply unified diffs.
  URL:=https://github.com/conan-io/python-patch
  DEPENDS:= \
	+python3
endef

define Package/python3-patch-ng/description
As any other project, bugs are common during the development process, the combination of issues + pull requests are able to keep the constant improvement of a project.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-patch-ng))
$(eval $(call BuildPackage,python3-patch-ng))
$(eval $(call BuildPackage,python3-patch-ng-src))
