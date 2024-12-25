include $(TOPDIR)/rules.mk

PKG_NAME:=python-cchardet
PKG_VERSION:=2.1.7
PKG_RELEASE:=1

PYPI_NAME:=cchardet
PKG_HASH:=c428b6336545053c2589f6caf24ea32276c6664cb86db817e03a94c60afa0eaf

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-cchardet
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=cChardet is high speed universal character encoding detector.
  URL:=https://github.com/PyYoshi/cChardet
  DEPENDS:=+python3 +uchardet
endef

define Package/python3-cchardet/description
  cChardet is high speed universal character encoding detector. - binding to uchardet.
endef

$(eval $(call Py3Package,python3-cchardet))
$(eval $(call BuildPackage,python3-cchardet))
$(eval $(call BuildPackage,python3-cchardet-src))
