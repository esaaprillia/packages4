include $(TOPDIR)/rules.mk

PKG_NAME:=python-git-fame
PKG_VERSION:=3.1.1
PKG_RELEASE:=1

PYPI_NAME:=git_fame
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MPL-2.0
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-git-fame
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Pretty-print git repository collaborators sorted by contributions.
  URL:=https://github.com/casperdcl/git-fame
  DEPENDS:=+python3
endef

define Package/python3-git-fame/description
  Pretty-print git repository collaborators sorted by contributions.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-git-fame))
$(eval $(call BuildPackage,python3-git-fame))
$(eval $(call BuildPackage,python3-git-fame-src))
