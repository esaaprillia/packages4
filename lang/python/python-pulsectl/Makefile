include $(TOPDIR)/rules.mk

PKG_NAME:=python-pulsectl
PKG_VERSION:=24.12.0
PKG_RELEASE:=1

PYPI_NAME:=pulsectl
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pulsectl
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python high-level interface and ctypes-based bindings for PulseAudio (libpulse)
  URL:=https://github.com/mk-fg/python-pulse-control
  DEPENDS:=+python3 +pulseaudio-daemon
endef

define Package/python3-pulsectl/description
Python (3.x and 2.x) blocking high-level interface and ctypes-based bindings for PulseAudio (libpulse), to use in a simple synchronous code.
endef

$(eval $(call Py3Package,python3-pulsectl))
$(eval $(call BuildPackage,python3-pulsectl))
$(eval $(call BuildPackage,python3-pulsectl-src))
$(eval $(call HostBuild))
