include $(TOPDIR)/rules.mk

PKG_NAME:=python-hatch-regex-commit
PKG_VERSION:=0.0.4
PKG_RELEASE:=1

PYPI_NAME:=hatch_regex_commit
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-hatch-regex-commit
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Hatch plugin to create a commit and tag when bumping version
  URL:=https://github.com/frankie567/hatch-regex-commit
  DEPENDS:=+python3
endef

define Package/python3-hatch-regex-commit/description
This provides a plugin for Hatch that automatically creates a Git commit and tag after version bumping.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-hatch-regex-commit))
$(eval $(call BuildPackage,python3-hatch-regex-commit))
$(eval $(call BuildPackage,python3-hatch-regex-commit-src))
