include $(TOPDIR)/rules.mk

PKG_NAME:=python-pygobject
PKG_VERSION:=3.56.2
PKG_RELEASE:=1

PYPI_NAME:=pygobject
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPLv2.1
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=meson-python/host python-pycairo/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../meson/meson.mk
include ../python3-package.mk

define Package/python3-pygobject
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python bindings for GObject Introspection
  URL:=https://github.com/pygobject/pycairo
  DEPENDS:=+python3 +python3-pycairo +gobject-introspection
endef

define Package/python3-pygobject/description
  PyGObject is a Python package which provides bindings for GObject based libraries such as GTK, GStreamer, WebKitGTK, GLib, GIO and many more.
endef

$(eval $(call Py3Package,python3-pygobject))
$(eval $(call BuildPackage,python3-pygobject))
$(eval $(call BuildPackage,python3-pygobject-src))
