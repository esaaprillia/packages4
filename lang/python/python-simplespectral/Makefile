include $(TOPDIR)/rules.mk

PKG_NAME:=python-simplespectral
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PYPI_NAME:=SimpleSpectral
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-simplespectral
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Heavily simplified scipy.signal.spectral module which only depends on NumPy and supports pyFFTW
  URL:=https://github.com/xmikos/simplespectral
  DEPENDS:=+python3 +python3-numpy
endef

define Package/python3-simplespectral/description
Heavily simplified scipy.signal.spectral module which only depends on NumPy and supports pyFFTW
endef

PYTHON3_PKG_WHEEL_NAME:=simplespectral

$(eval $(call Py3Package,python3-simplespectral))
$(eval $(call BuildPackage,python3-simplespectral))
$(eval $(call BuildPackage,python3-simplespectral-src))
