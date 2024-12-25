include $(TOPDIR)/rules.mk

PKG_NAME:=python-faust-cchardet
PKG_VERSION:=2.1.19
PKG_RELEASE:=1

PYPI_NAME:=faust-cchardet
PKG_HASH:=f89386297cde0c8e0f5e21464bc2d6d0e4a4fc1b1d77cdb238ca24d740d872e0

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=python-cython/host python-pkgconfig/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-faust-cchardet
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=cChardet is high speed universal character encoding detector.
  URL:=https://github.com/faust-streaming/cChardet
  DEPENDS:=+python3 +uchardet
endef

define Package/python3-faust-cchardet/description
  cChardet is high speed universal character encoding detector. - binding to uchardet.
endef

$(eval $(call Py3Package,python3-faust-cchardet))
$(eval $(call BuildPackage,python3-faust-cchardet))
$(eval $(call BuildPackage,python3-faust-cchardet-src))
