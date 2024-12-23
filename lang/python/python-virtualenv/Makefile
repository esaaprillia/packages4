include $(TOPDIR)/rules.mk

PKG_NAME:=python-virtualenv
PKG_VERSION:=20.28.0
PKG_RELEASE:=1

PYPI_NAME:=virtualenv
PKG_HASH:=2c9c3262bb8e7b87ea801d715fae4495e6032450c71d2309be9550e7364049aa

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-virtualenv
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Virtual Python Environment builder
  URL:=https://virtualenv.pypa.io/
  DEPENDS:=+python3-light +python3-distlib +python3-filelock +python3-platformdirs
endef

define Package/python3-virtualenv/description
A tool for creating isolated virtual python environments.
endef

$(eval $(call Py3Package,python3-virtualenv))
$(eval $(call BuildPackage,python3-virtualenv))
$(eval $(call BuildPackage,python3-virtualenv-src))
