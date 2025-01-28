include $(TOPDIR)/rules.mk

PKG_NAME:=python-setuptools-git-versioning
PKG_VERSION:=1.13.6
PKG_RELEASE:=1

PYPI_NAME:=setuptools-git-versioning
PKG_HASH:=75e3e8c4528fa21ca2417a1f222fdaaa4d2ca7d8536c44affad827c6ec9ba0d4

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_HOST_ONLY:=1
HOST_BUILD_DEPENDS:=python-packaging/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-setuptools-git-versioning
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=use git repo data
  URL:=https://setuptools-git-versioning.readthedocs.io
  DEPENDS:= \
	+python3-logging \
	+python3-packaging \
	+python3-setuptools
  BUILDONLY:=1
endef

define Package/python3-setuptools-git-versioning/description
  Use git repo data for building a version number according PEP-440.
endef

PYTHON3_HOST_WHEEL_NAME:=setuptools_git_versioning
PYTHON3_HOST_WHEEL_VERSION:=2.1.0

$(eval $(call Py3Package,python3-setuptools-git-versioning))
$(eval $(call BuildPackage,python3-setuptools-git-versioning))
$(eval $(call BuildPackage,python3-setuptools-git-versioning-src))
$(eval $(call HostBuild))
