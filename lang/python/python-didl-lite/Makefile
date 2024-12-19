include $(TOPDIR)/rules.mk

PKG_NAME:=python-didl-lite
PKG_VERSION:=1.4.1
PKG_RELEASE:=1

PYPI_NAME:=python_didl_lite
PKG_HASH:=68f085b965bde12c0cbc4a068c1fb4c22c58c8f119b1851630896fced7201dc4

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
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
  DEPENDS:=+python3
endef

define Package/python3-didl-lite/description
DIDL-Lite tools for Python to read and write DIDL-Lite-xml.
endef

$(eval $(call Py3Package,python3-didl-lite))
$(eval $(call BuildPackage,python3-didl-lite))
$(eval $(call BuildPackage,python3-didl-lite-src))
