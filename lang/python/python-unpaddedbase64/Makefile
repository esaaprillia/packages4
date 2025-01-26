include $(TOPDIR)/rules.mk

PKG_NAME:=python-unpaddedbase64
PKG_VERSION:=2.1.0
PKG_RELEASE:=1

PYPI_NAME:=unpaddedbase64
PKG_HASH:=7273c60c089de39d90f5d6d4a7883a79e319dc9d9b1c8924a7fab96178a5f005

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-unpaddedbase64
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Unpadded Base64
  URL:=https://github.com/matrix-org/python-unpaddedbase64
  DEPENDS:=+python3
endef

define Package/python3-unpaddedbase64/description
RFC 4648 specifies that Base64 should be padded to a multiple of 4 bytes using “=” characters. However many protocols choose to omit the “=” padding.
endef

$(eval $(call Py3Package,python3-unpaddedbase64))
$(eval $(call BuildPackage,python3-unpaddedbase64))
$(eval $(call BuildPackage,python3-unpaddedbase64-src))
