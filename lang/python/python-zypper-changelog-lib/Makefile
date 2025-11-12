include $(TOPDIR)/rules.mk

PKG_NAME:=python-zypper-changelog-lib
PKG_VERSION:=0.7.9
PKG_RELEASE:=1

PYPI_NAME:=zypper_changelog_lib
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1-only AND GPL-3.0-or-later
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-zypper-changelog-lib
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Changelogs for installable pending updates, or available/uninstalled packages
  URL:=https://codeberg.org/Rockstor/zypper-changelog-lib
  DEPENDS:=+python3 +python3-requests +python3-rpm +python3-keyring-pass
endef

define Package/python3-zypper-changelog-lib/description
Both YUM & DNF can provide changelogs for pending package updates, or as-yet uninstalled packages. Zypper, the package manager favoured by openSUSE, lacks these capabilities currently.
endef

$(eval $(call Py3Package,python3-zypper-changelog-lib))
$(eval $(call BuildPackage,python3-zypper-changelog-lib))
$(eval $(call BuildPackage,python3-zypper-changelog-lib-src))
