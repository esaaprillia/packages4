include $(TOPDIR)/rules.mk

PKG_NAME:=python-standard-aifc
PKG_VERSION:=3.13.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=standard_aifc
PKG_HASH:=64e249c7cb4b3daf2fdba4e95721f811bde8bdfc43ad9f936589b7bb2fae2e43

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-standard-aifc
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Standard library aifc redistribution. "dead battery".
  URL:=https://github.com/youknowone/python-deadlib
  DEPENDS:=+python3 +python3-standard-chunk +python3-audioop-lts
endef

define Package/python3-standard-aifc/description
Python is moving forward! Python finally started to remove dead batteries. For more information, see PEP 594.
If your project depends on a module that has been removed from the standard, here is the redistribution of the dead batteries.
endef

$(eval $(call Py3Package,python3-standard-aifc))
$(eval $(call BuildPackage,python3-standard-aifc))
$(eval $(call BuildPackage,python3-standard-aifc-src))
