include $(TOPDIR)/rules.mk

PKG_NAME:=python-moonraker
PKG_VERSION:=0.10.0
PKG_RELEASE:=1

PYPI_NAME:=moonraker
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-pdm-backend/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-moonraker
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=API Server for Klipper
  URL:=https://github.com/Arksine/moonraker
  DEPENDS:= \
	+python3-light \
	+python3-tornado \
	+python3-pyserial \
	+python3-pillow \
	+python3-streaming-form-data \
	+python3-distro \
	+python3-inotify-simple \
	+python3-libnacl \
	+python3-paho-mqtt \
	+python3-zeroconf \
	+python3-preprocess-cancellation \
	+python3-jinja2 \
	+python3-dbus-fast \
	+python3-apprise \
	+python3-ldap3 \
	+python3-periphery \
	+python3-importlib-metadata
endef

define Package/python3-moonraker/description
Moonraker is a Python 3 based web server that exposes APIs with which client applications may use to interact with the 3D printing firmware Klipper.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-moonraker))
$(eval $(call BuildPackage,python3-moonraker))
$(eval $(call BuildPackage,python3-moonraker-src))
