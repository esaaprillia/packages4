include $(TOPDIR)/rules.mk

PKG_NAME:=python-msal
PKG_VERSION:=1.36.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=msal
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-msal
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Microsoft Authentication Library (MSAL) for Python
  URL:=https://github.com/AzureAD/microsoft-authentication-library-for-python/
  DEPENDS:= \
	+python3-light \
	+python3-requests \
	+python3-pyjwt \
	+python3-cryptography
endef

define Package/python3-msal/description
The Microsoft Authentication Library for Python enables applications to integrate with the Microsoft identity platform.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-msal))
$(eval $(call BuildPackage,python3-msal))
$(eval $(call BuildPackage,python3-msal-src))
