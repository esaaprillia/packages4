include $(TOPDIR)/rules.mk

PKG_NAME:=python-setuptools-scm-git-archive
PKG_VERSION:=1.4.1
PKG_RELEASE:=1

PYPI_NAME:=setuptools_scm_git_archive
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-setuptools-scm-git-archive
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=setuptools_scm plugin for git archives
  URL:=https://github.com/Changaco/setuptools_scm_git_archive/
  DEPENDS:=+python3
endef

define Package/python3-setuptools-scm-git-archive/description
setuptools_scm plugin for git archives
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-setuptools-scm-git-archive))
$(eval $(call BuildPackage,python3-setuptools-scm-git-archive))
$(eval $(call BuildPackage,python3-setuptools-scm-git-archive-src))
