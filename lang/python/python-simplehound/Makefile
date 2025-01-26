include $(TOPDIR)/rules.mk

PKG_NAME:=python-simplehound
PKG_VERSION:=0.6
PKG_RELEASE:=1

PYPI_NAME:=simplehound
PKG_HASH:=12dbb0f05d293a6c7c209266c31670154846718125d628ed8bdb68f14a0ded2b

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache 2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-requests/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-simplehound
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Unofficial python API for Sighthound
  URL:=https://www.sighthound.com/products/cloud
  DEPENDS:=+python3 +python3-requests
endef

define Package/python3-simplehound/description
  Unofficial python API for Sighthound, providing helper functions and classes for processing images and parsing the data returned by Sighthound cloud. Face, person and license plate detection are supported. See the usage.ipynb notebook for example usage.
endef

$(eval $(call Py3Package,python3-simplehound))
$(eval $(call BuildPackage,python3-simplehound))
$(eval $(call BuildPackage,python3-simplehound-src))
