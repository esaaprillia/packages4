include $(TOPDIR)/rules.mk

PKG_NAME:=python-semver
PKG_VERSION:=3.0.4
PKG_RELEASE:=1

PYPI_NAME:=semver
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-semver
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python helper for Semantic Versioning (https://semver.org)
  URL:=https://python-semver.rtfd.io/
  DEPENDS:=+python3
endef

define Package/python3-semver/description
A Python module to simplify semantic versioning.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-semver))
$(eval $(call BuildPackage,python3-semver))
$(eval $(call BuildPackage,python3-semver-src))
