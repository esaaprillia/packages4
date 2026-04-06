include $(TOPDIR)/rules.mk

PKG_NAME:=python-git-archive-all
PKG_VERSION:=1.23.1
PKG_RELEASE:=1

PYPI_NAME:=git-archive-all
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-git-archive-all
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Archive git repository with its submodules.
  URL:=https://github.com/Kentzo/git-archive-all
  DEPENDS:=+python3
endef

define Package/python3-git-archive-all/description
Archive a repository with all its submodules.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-git-archive-all))
$(eval $(call BuildPackage,python3-git-archive-all))
$(eval $(call BuildPackage,python3-git-archive-all-src))
