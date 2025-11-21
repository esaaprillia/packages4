include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyatv
PKG_VERSION:=0.16.1
PKG_RELEASE:=1

PYPI_NAME:=pyatv
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python-pytest-runner/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pyatv
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A client library for Apple TV and AirPlay devices
  URL:=https://pyatv.dev/
  DEPENDS:=+python3 +python3-aiohttp +python3-async-timeout +python3-cryptography +python3-chacha20poly1305-reuseable +python3-ifaddr +python3-miniaudio +python3-protobuf +python3-pydantic +python3-requests +python3-srptools +python3-tabulate +python3-tinytag +python3-zeroconf
endef

define Package/python3-pyatv/description
This is an asyncio python library for interacting with Apple TV and AirPlay devices.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pyatv))
$(eval $(call BuildPackage,python3-pyatv))
$(eval $(call BuildPackage,python3-pyatv-src))
