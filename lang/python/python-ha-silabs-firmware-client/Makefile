include $(TOPDIR)/rules.mk

PKG_NAME:=python-ha-silabs-firmware-client
PKG_VERSION:=0.3.0
PKG_RELEASE:=1

PYPI_NAME:=ha_silabs_firmware_client
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-git-versioning/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-ha-silabs-firmware-client
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Home Assistant client for firmwares released with silabs-firmware-builder.
  URL:=https://github.com/home-assistant-libs/ha-silabs-firmware-client
  DEPENDS:=+python3 +python3-aiohttp +python3-packaging +python3-yarl
endef

define Package/python3-ha-silabs-firmware-client/description
Home Assistant client for firmwares released with silabs-firmware-builder.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-ha-silabs-firmware-client))
$(eval $(call BuildPackage,python3-ha-silabs-firmware-client))
$(eval $(call BuildPackage,python3-ha-silabs-firmware-client-src))
