include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyu2f
PKG_VERSION:=0.1.5
PKG_RELEASE:=1

PYPI_NAME:=pyu2f
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyu2f
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=U2F host library for interacting with a U2F device over USB.
  URL:=https://github.com/google/pyu2f/
  DEPENDS:=+python3 +python3-six
endef

define Package/python3-pyu2f/description
pyu2f is a python based U2F host library for Linux, Windows, and MacOS. It provides functionality for interacting with a U2F device over USB.
endef

$(eval $(call Py3Package,python3-pyu2f))
$(eval $(call BuildPackage,python3-pyu2f))
$(eval $(call BuildPackage,python3-pyu2f-src))
