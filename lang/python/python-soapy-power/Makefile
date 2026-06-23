include $(TOPDIR)/rules.mk

PKG_NAME:=python-soapy-power
PKG_VERSION:=1.6.1
PKG_RELEASE:=1

PYPI_NAME:=soapy_power
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-soapy-power
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Obtain power spectrum from SoapySDR
  URL:=https://github.com/xmikos/soapy_power
  DEPENDS:=+python3 +python3-numpy +python3-simplesoapy +python3-simplespectral +python3-pyfftw
endef

define Package/python3-soapy-power/description
Obtain power spectrum from SoapySDR devices (RTL-SDR, Airspy, SDRplay, HackRF, bladeRF, USRP, LimeSDR, etc.)
endef

$(eval $(call Py3Package,python3-soapy-power))
$(eval $(call BuildPackage,python3-soapy-power))
$(eval $(call BuildPackage,python3-soapy-power-src))
