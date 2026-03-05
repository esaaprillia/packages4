include $(TOPDIR)/rules.mk

PKG_NAME:=python-sounddevice
PKG_VERSION:=0.5.5
PKG_RELEASE:=1

PYPI_NAME:=sounddevice
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cffi/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-sounddevice
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Play and Record Sound with Python
  URL:=http://python-sounddevice.readthedocs.io/
  DEPENDS:=+python3 +python3-cffi +python3-numpy +portaudio
endef

define Package/python3-sounddevice/description
This Python module provides bindings for the PortAudio library and a few convenience functions to play and record NumPy arrays containing audio signals.
endef

$(eval $(call Py3Package,python3-sounddevice))
$(eval $(call BuildPackage,python3-sounddevice))
$(eval $(call BuildPackage,python3-sounddevice-src))
