include $(TOPDIR)/rules.mk

PKG_NAME:=python-wyoming-satellite
PKG_VERSION:=1.4.1
PKG_RELEASE:=1

PYPI_NAME:=wyoming-satellite
PKG_SOURCE_URL:=https://github.com/rhasspy/wyoming-satellite/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-wyoming-satellite
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Remote voice satellite using Wyoming protocol
  URL:=https://github.com/rhasspy/wyoming-satellite
  DEPENDS:=+python3 +python3-wyoming +python3-zeroconf +python3-pyring-buffer +python3-pysilero-vad +python3-webrtc-noise-gain +python3-gpiozero +python3-spidev
endef

define Package/python3-wyoming-satellite/description
Remote voice satellite using the Wyoming protocol.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-wyoming-satellite))
$(eval $(call BuildPackage,python3-wyoming-satellite))
$(eval $(call BuildPackage,python3-wyoming-satellite-src))
