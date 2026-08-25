include $(TOPDIR)/rules.mk

PKG_NAME:=python-didl-lite
PKG_VERSION:=1.5.1
PKG_RELEASE:=1

PYPI_NAME:=python_didl_lite
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-didl-lite
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=DIDL-Lite (Digital Item Declaration Language) tools for Python
  URL:=https://github.com/StevenLooman/python-didl-lite
  DEPENDS:=+python3 +python3-defusedxml
endef

define Package/python3-didl-lite/description
DIDL-Lite tools for Python to read and write DIDL-Lite-xml.
endef

$(eval $(call Py3Package,python3-didl-lite))
$(eval $(call BuildPackage,python3-didl-lite))
$(eval $(call BuildPackage,python3-didl-lite-src))
