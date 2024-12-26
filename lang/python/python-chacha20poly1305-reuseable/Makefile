include $(TOPDIR)/rules.mk

PKG_NAME:=python-chacha20poly1305-reuseable
PKG_VERSION:=0.13.2
PKG_RELEASE:=1

PYPI_NAME:=chacha20poly1305_reuseable
PKG_HASH:=dd8be876e25dfc51909eb35602b77a76e0d01a364584756ab3fa848e2407e4ec

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-chacha20poly1305-reuseable
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=ChaCha20Poly1305 that is reuseable for asyncio
  URL:=https://github.com/bdraco/chacha20poly1305-reuseable
  DEPENDS:=+python3 +python3-cryptography
endef

define Package/python3-chacha20poly1305-reuseable/description
  ChaCha20Poly1305 that is reuseable for asyncio. cryptography has switched to a rust based implementation for chacha20poly1305 in later versions which makes this library obsolete, and should not be used in new projects.
endef

$(eval $(call Py3Package,python3-chacha20poly1305-reuseable))
$(eval $(call BuildPackage,python3-chacha20poly1305-reuseable))
$(eval $(call BuildPackage,python3-chacha20poly1305-reuseable-src))
