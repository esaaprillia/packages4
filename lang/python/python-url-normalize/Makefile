include $(TOPDIR)/rules.mk

PKG_NAME:=python-url-normalize
PKG_VERSION:=2.2.1
PKG_RELEASE:=1

PYPI_NAME:=url_normalize
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-url-normalize
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=URL normalization for Python
  URL:=https://github.com/niksite/url-normalize
  DEPENDS:=+python3 +python3-idna
endef

define Package/python3-url-normalize/description
A Python library for standardizing and normalizing URLs with support for internationalized domain names (IDN).
endef

$(eval $(call Py3Package,python3-url-normalize))
$(eval $(call BuildPackage,python3-url-normalize))
$(eval $(call BuildPackage,python3-url-normalize-src))
