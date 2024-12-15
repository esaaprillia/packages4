include $(TOPDIR)/rules.mk

PKG_NAME:=python-standard-telnetlib
PKG_VERSION:=3.13.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=standard_telnetlib
PKG_HASH:=243333696bf1659a558eb999c23add82c41ffc2f2d04a56fae13b61b536fb173

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-standard-telnetlib
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Standard library telnetlib redistribution. "dead battery".
  URL:=https://github.com/youknowone/python-deadlib
  DEPENDS:=+python3
endef

define Package/python3-standard-telnetlib/description
Python is moving forward! Python finally started to remove dead batteries. For more information, see PEP 594.
If your project depends on a module that has been removed from the standard, here is the redistribution of the dead batteries.
endef

$(eval $(call Py3Package,python3-standard-telnetlib))
$(eval $(call BuildPackage,python3-standard-telnetlib))
$(eval $(call BuildPackage,python3-standard-telnetlib-src))
$(eval $(call HostBuild))
