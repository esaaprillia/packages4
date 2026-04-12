include $(TOPDIR)/rules.mk

PKG_NAME:=python-msal-extensions
PKG_VERSION:=1.3.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=msal_extensions
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-msal-extensions
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Microsoft Authentication Extensions for Python
  URL:=https://github.com/AzureAD/microsoft-authentication-extensions-for-python
  DEPENDS:= \
	+python3-light \
	+python3-msal
endef

define Package/python3-msal-extensions/description
The Microsoft Authentication Extensions for Python offers secure mechanisms for client applications to perform cross-platform token cache serialization and persistence.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-msal-extensions))
$(eval $(call BuildPackage,python3-msal-extensions))
$(eval $(call BuildPackage,python3-msal-extensions-src))
