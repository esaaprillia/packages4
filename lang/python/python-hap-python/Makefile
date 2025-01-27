include $(TOPDIR)/rules.mk

PKG_NAME:=python-hap-python
PKG_VERSION:=4.9.2
PKG_RELEASE:=1

PYPI_NAME:=hap_python
PKG_HASH:=5218a38f576f9b8f55aa3ffd93b9415e3429902bb340dcde74044b2f40f47c0d

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-hap-python
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=HomeKit Accessory Protocol implementation in python
  URL:=https://github.com/ikalchev/HAP-python
  DEPENDS:=+python3 +python3-cryptography +python3-chacha20poly1305-reuseable +python3-orjson +python3-zeroconf +python3-h11 +python3-base36 +python3-pyqrcode
endef

define Package/python3-hap-python/description
HomeKit Accessory Protocol implementation in python 3. With this project, you can integrate your own smart devices and add them to your iOS Home app. Since Siri is integrated with the Home app, you can start voice-control your accessories right away.
endef

PYTHON3_PKG_WHEEL_NAME:=HAP_python
PYTHON3_PKG_WHEEL_VERSION:=4.9.2

$(eval $(call Py3Package,python3-hap-python))
$(eval $(call BuildPackage,python3-hap-python))
$(eval $(call BuildPackage,python3-hap-python-src))
