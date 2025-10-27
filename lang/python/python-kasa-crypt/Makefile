include $(TOPDIR)/rules.mk

PKG_NAME:=python-kasa-crypt
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PYPI_NAME:=kasa_crypt
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-kasa-crypt
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Fast kasa crypt
  URL:=https://github.com/python-kasa/kasa-crypt
  DEPENDS:=+python3
endef

define Package/python3-kasa-crypt/description
Fast kasa crypt
endef

$(eval $(call Py3Package,python3-kasa-crypt))
$(eval $(call BuildPackage,python3-kasa-crypt))
$(eval $(call BuildPackage,python3-kasa-crypt-src))
