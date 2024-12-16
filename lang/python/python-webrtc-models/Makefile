include $(TOPDIR)/rules.mk

PKG_NAME:=python-webrtc-models
PKG_VERSION:=0.3.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=webrtc_models
PKG_HASH:=559c743e5cc3bcc8133be1b6fb5e8492a9ddb17151129c21cbb2e3f2a1166526

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-webrtc-models
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python WebRTC models
  URL:=https://github.com/home-assistant-libs/python-webrtc-models
  DEPENDS:=+python3 +python3-orjson +python3-mashumaro
endef

define Package/python3-webrtc-models/description
WebRTC models as Python dataclasses with mashumaro
endef

$(eval $(call Py3Package,python3-webrtc-models))
$(eval $(call BuildPackage,python3-webrtc-models))
$(eval $(call BuildPackage,python3-webrtc-models-src))
