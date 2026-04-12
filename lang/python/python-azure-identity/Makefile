include $(TOPDIR)/rules.mk

PKG_NAME:=python-azure-identity
PKG_VERSION:=1.25.3
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=azure_identity
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-azure-identity
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Microsoft Azure Identity Library for Python
  URL:=https://github.com/Azure/azure-sdk-for-python
  DEPENDS:= \
	+python3-light \
	+python3-azure-core \
	+python3-cryptography \
	+python3-msal \
	+python3-msal-extensions \
	+python3-typing-extensions
endef

define Package/python3-azure-identity/description
The Azure Identity library provides Microsoft Entra ID token-based authentication support across the Azure SDK.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-azure-identity))
$(eval $(call BuildPackage,python3-azure-identity))
$(eval $(call BuildPackage,python3-azure-identity-src))
