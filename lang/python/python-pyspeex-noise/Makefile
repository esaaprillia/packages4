include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyspeex-noise
PKG_VERSION:=1.0.2
PKG_RELEASE:=1

PYPI_NAME:=pyspeex_noise
PKG_HASH:=56a888ca2ef7fdea2316aa7fad3636d2fcf5f4450f3a0db58caa7c10a614b254

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-pybind11/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyspeex-noise
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Noise suppression and automatic gain with speex
  URL:=https://github.com/rhasspy/pyspeex-noise
  DEPENDS:=+python3 +libstdcpp
endef

define Package/python3-pyspeex-noise/description
  Noise suppression and automatic gain control using speex.
endef

$(eval $(call Py3Package,python3-pyspeex-noise))
$(eval $(call BuildPackage,python3-pyspeex-noise))
$(eval $(call BuildPackage,python3-pyspeex-noise-src))
