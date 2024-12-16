include $(TOPDIR)/rules.mk

PKG_NAME:=python-psutil-home-assistant
PKG_VERSION:=0.0.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=psutil-home-assistant
PKG_HASH:=ebe4f3a98d76d93a3140da2823e9ef59ca50a59761fdc453b30b4407c4c1bdb8

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-psutil-home-assistant
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Wrapper for psutil to allow it to be used several times in the same process.
  URL:=https://github.com/home-assistant-libs/psutil-home-assistant
  DEPENDS:=+python3 +python3-psutil
endef

define Package/python3-psutil-home-assistant/description
The psutil library relies on global variable to maintain state between calls. This wrapper allows making local copies of the psutil library, wrapped in an object to allow psutil to be used more than once in a process.
endef

$(eval $(call Py3Package,python3-psutil-home-assistant))
$(eval $(call BuildPackage,python3-psutil-home-assistant))
$(eval $(call BuildPackage,python3-psutil-home-assistant-src))
