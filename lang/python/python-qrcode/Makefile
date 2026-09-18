include $(TOPDIR)/rules.mk

PKG_NAME:=python-qrcode
PKG_VERSION:=8.2
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=qrcode
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-qrcode
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python QR Code image generator
  URL:=https://github.com/lincolnloop/python-qrcode
  DEPENDS:= \
	+python3 \
	+python3-deprecation \
	+python3-pillow \
	+python3-pypng
endef

define Package/python3-qrcode/description
A standard install uses pypng to generate PNG files and can also render QR codes directly to the console.
endef

$(eval $(call Py3Package,python3-qrcode))
$(eval $(call BuildPackage,python3-qrcode))
$(eval $(call BuildPackage,python3-qrcode-src))
