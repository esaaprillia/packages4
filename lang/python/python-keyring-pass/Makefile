include $(TOPDIR)/rules.mk

PKG_NAME:=python-keyring-pass
PKG_VERSION:=0.9.3
PKG_RELEASE:=1

PYPI_NAME:=keyring_pass
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-keyring-pass
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=This is a pass backend for keyring
  URL:=https://github.com/nazarewk/keyring_pass
  DEPENDS:=+python3 +python3-keyring +python3-jaraco-classes
endef

define Package/python3-keyring-pass/description
Password Store (pass) backend for python keyring
endef

$(eval $(call Py3Package,python3-keyring-pass))
$(eval $(call BuildPackage,python3-keyring-pass))
$(eval $(call BuildPackage,python3-keyring-pass-src))
