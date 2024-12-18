include $(TOPDIR)/rules.mk

PKG_NAME:=python-reedsolo
PKG_VERSION:=1.7.0
PKG_RELEASE:=1

PYPI_NAME:=reedsolo
PKG_HASH:=c1359f02742751afe0f1c0de9f0772cc113835aa2855d2db420ea24393c87732

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-reedsolo
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A pure-python universal errors-and-erasures Reed-Solomon Codec
  URL:=https://github.com/tomerfiliba/reedsolomon
  DEPENDS:=+python3 +python3-setuptools
endef

define Package/python3-reedsolo/description
  Pythonic universal errors-and-erasures Reed-Solomon codec to protect your data from errors and bitrot. Includes a future-proof zero-dependencies pure-python implementation and an optional speed-optimized Cython/C extension
endef

$(eval $(call Py3Package,python3-reedsolo))
$(eval $(call BuildPackage,python3-reedsolo))
$(eval $(call BuildPackage,python3-reedsolo-src))
