include $(TOPDIR)/rules.mk

PKG_NAME:=python-pycognito
PKG_VERSION:=2024.5.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=pycognito
PKG_HASH:=e211c66698c2c3dc8680e95107c2b4a922f504c3f7c179c27b8ee1ab0fc23ae4

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pycognito
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python class to integrate Boto3's Cognito client so it is easy to login users. With SRP support.
  URL:=https://github.com/NabuCasa/pycognito
  DEPENDS:=+python3 +python3-requests +python3-pyjwt +python3-envs +python3-boto3
endef

define Package/python3-pycognito/description
Makes working with AWS Cognito easier for Python developers.
endef

$(eval $(call Py3Package,python3-pycognito))
$(eval $(call BuildPackage,python3-pycognito))
$(eval $(call BuildPackage,python3-pycognito-src))
