include $(TOPDIR)/rules.mk

PKG_NAME:=python-inotify-simple
PKG_VERSION:=2.0.1
PKG_RELEASE:=1

PYPI_NAME:=inotify_simple
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-inotify-simple
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A simple wrapper around inotify
  URL:=http://inotify-simple.readthedocs.io/
  DEPENDS:= \
	+python3-light
endef

define Package/python3-inotify-simple/description
inotify-simple is a simple Python wrapper around inotify.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-inotify-simple))
$(eval $(call BuildPackage,python3-inotify-simple))
$(eval $(call BuildPackage,python3-inotify-simple-src))
