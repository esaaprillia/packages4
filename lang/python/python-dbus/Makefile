include $(TOPDIR)/rules.mk

PKG_NAME:=python-dbus
PKG_VERSION:=1.4.0
PKG_RELEASE:=1

PYPI_NAME:=dbus-python
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=meson-python/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../meson/meson.mk
include ../python3-package.mk

define Package/python3-dbus
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python bindings for libdbus
  URL:=https://gitlab.freedesktop.org/dbus/dbus-python/
  DEPENDS:=+python3 +glib2 +libdbus
endef

define Package/python3-dbus/description
dbus-python is the original Python binding for dbus, the reference implementation of the D-Bus protocol.
endef

$(eval $(call Py3Package,python3-dbus))
$(eval $(call BuildPackage,python3-dbus))
$(eval $(call BuildPackage,python3-dbus-src))
