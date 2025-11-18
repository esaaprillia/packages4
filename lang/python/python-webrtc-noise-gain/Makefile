include $(TOPDIR)/rules.mk

PKG_NAME:=python-webrtc-noise-gain
PKG_VERSION:=1.2.5
PKG_RELEASE:=1

PYPI_NAME:=webrtc_noise_gain
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python-pybind11/host abseil-cpp/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Build/Prepare
	$(call Build/Prepare/Default)
	$(SED) 's/machine = platform.machine().lower()/machine="aarch64"/' $(PKG_BUILD_DIR)/setup.py
endef

define Package/python3-webrtc-noise-gain
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Noise suppression and automatic gain with webrtc
  URL:=https://github.com/rhasspy/webrtc-noise-gain
  DEPENDS:=+python3 +libstdcpp
endef

define Package/python3-webrtc-noise-gain/description
Tiny Python wrapper around webrtc-audio-processing for noise suppression and auto gain only.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-webrtc-noise-gain))
$(eval $(call BuildPackage,python3-webrtc-noise-gain))
$(eval $(call BuildPackage,python3-webrtc-noise-gain-src))
