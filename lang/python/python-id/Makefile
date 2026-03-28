include $(TOPDIR)/rules.mk

PKG_NAME:=python-id
PKG_VERSION:=1.6.1
PKG_RELEASE:=1

PYPI_NAME:=id
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-flit-core/host
HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-id
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A tool for generating OIDC identities
  URL:=https://pypi.org/project/id/
  DEPENDS:=+python3 +python3-urllib3
endef

define Package/python3-id/description
id is a Python tool for generating OIDC identities. It can automatically detect and produce OIDC credentials on a number of environments, including GitHub Actions, GitLab pipelines and Google Cloud.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-id))
$(eval $(call BuildPackage,python3-id))
$(eval $(call BuildPackage,python3-id-src))
