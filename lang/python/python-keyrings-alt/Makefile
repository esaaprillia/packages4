include $(TOPDIR)/rules.mk

PKG_NAME:=python-keyrings-alt
PKG_VERSION:=5.0.2
PKG_RELEASE:=1

PYPI_NAME:=keyrings_alt
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-keyrings-alt
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Alternate keyring implementations
  URL:=https://github.com/jaraco/keyrings.alt
  DEPENDS:=+python3 +python3-jaraco-classes +python3-jaraco-context
endef

define Package/python3-keyrings-alt/description
Alternate keyring backend implementations for use with the keyring package.
endef

$(eval $(call Py3Package,python3-keyrings-alt))
$(eval $(call BuildPackage,python3-keyrings-alt))
$(eval $(call BuildPackage,python3-keyrings-alt-src))
