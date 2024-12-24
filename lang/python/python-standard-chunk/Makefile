include $(TOPDIR)/rules.mk

PKG_NAME:=python-standard-chunk
PKG_VERSION:=3.13.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=standard_chunk
PKG_HASH:=4ac345d37d7e686d2755e01836b8d98eda0d1a3ee90375e597ae43aaf064d654

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-standard-chunk
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Standard library chunk redistribution. "dead battery".
  URL:=https://github.com/youknowone/python-deadlib
  DEPENDS:=+python3
endef

define Package/python3-standard-chunk/description
Python is moving forward! Python finally started to remove dead batteries. For more information, see PEP 594.
If your project depends on a module that has been removed from the standard, here is the redistribution of the dead batteries.
endef

$(eval $(call Py3Package,python3-standard-chunk))
$(eval $(call BuildPackage,python3-standard-chunk))
$(eval $(call BuildPackage,python3-standard-chunk-src))
$(eval $(call HostBuild))
