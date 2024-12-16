include $(TOPDIR)/rules.mk

PKG_NAME:=python-expandvars
PKG_VERSION:=0.12.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=expandvars
PKG_HASH:=7d1adfa55728cf4b5d812ece3d087703faea953e0c0a1a78415de9df5024d844

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-expandvars
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Expand system variables Unix style
  URL:=https://github.com/sayanarijit/expandvars
  DEPENDS:=+python3
endef

define Package/python3-expandvars/description
This module is inspired by GNU bash's variable expansion features. It can be used as an alternative to Python's os.path.expandvars function.

A good use case is reading config files with the flexibility of reading values from environment variables using advanced features like returning a default value if some variable is not defined.
endef

$(eval $(call Py3Package,python3-expandvars))
$(eval $(call BuildPackage,python3-expandvars))
$(eval $(call BuildPackage,python3-expandvars-src))
$(eval $(call HostBuild))
