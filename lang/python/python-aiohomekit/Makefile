include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiohomekit
PKG_VERSION:=3.2.20
PKG_RELEASE:=1

PYPI_NAME:=aiohomekit
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-aiohomekit
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=An asyncio HomeKit client
  URL:=https://github.com/Jc2k/aiohomekit
  DEPENDS:=+python3 +python3-cryptography +python3-zeroconf +python3-commentjson +python3-aiocoap +python3-bleak +python3-chacha20poly1305-reuseable +python3-bleak-retry-connector +python3-orjson +python3-async-timeout +python3-chacha20poly1305 +python3-async-interrupt +python3-aiohappyeyeballs
endef

define Package/python3-aiohomekit/description
This library implements the HomeKit protocol for controlling Homekit accessories using asyncio.
It's primary use is for with Home Assistant. We target the same versions of python as them and try to follow their code standards.
At the moment we don't offer any API guarantees. API stability and documentation will happen after we are happy with how things are working within Home Assistant.
endef

$(eval $(call Py3Package,python3-aiohomekit))
$(eval $(call BuildPackage,python3-aiohomekit))
$(eval $(call BuildPackage,python3-aiohomekit-src))
