include $(TOPDIR)/rules.mk

PKG_NAME:=python-urwid
PKG_VERSION:=4.0.0
PKG_RELEASE:=1

PYPI_NAME:=urwid
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=COPYING

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-urwid
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A full-featured console (xterm et al.) user interface library
  URL:=https://github.com/urwid/urwid
  DEPENDS:=+python3 +python3-wcwidth
endef

define Package/python3-urwid/description
Urwid is a console user interface library for Python on Linux, OSX, Cygwin or other unix-like OS and partially supports Windows OS (see below).
endef

$(eval $(call Py3Package,python3-urwid))
$(eval $(call BuildPackage,python3-urwid))
$(eval $(call BuildPackage,python3-urwid-src))
$(eval $(call HostBuild))
