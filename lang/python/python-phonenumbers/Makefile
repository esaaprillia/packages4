include $(TOPDIR)/rules.mk

PKG_NAME:=python-phonenumbers
PKG_VERSION:=9.0.19
PKG_RELEASE:=1

PYPI_NAME:=phonenumbers
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-phonenumbers
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python port of Google's libphonenumber
  URL:=https://github.com/daviddrysdale/python-phonenumbers
  DEPENDS:=+python3
endef

define Package/python3-phonenumbers/description
Python version of Google's common library for parsing, formatting, storing and validating international phone numbers.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-phonenumbers))
$(eval $(call BuildPackage,python3-phonenumbers))
$(eval $(call BuildPackage,python3-phonenumbers-src))
