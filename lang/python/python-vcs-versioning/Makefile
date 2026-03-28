include $(TOPDIR)/rules.mk

PKG_NAME:=python-vcs-versioning
PKG_VERSION:=1.1.1
PKG_RELEASE:=1

PYPI_NAME:=vcs_versioning
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-packaging/host
HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-packaging/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-vcs-versioning
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=vcs-versioning
  URL:=https://github.com/pypa/setuptools-scm
  DEPENDS:= \
	+python3-light \
	+python3-packaging
endef

define Package/python3-vcs-versioning/description
the blessed package to manage your versions by vcs metadata
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-vcs-versioning))
$(eval $(call BuildPackage,python3-vcs-versioning))
$(eval $(call BuildPackage,python3-vcs-versioning-src))
