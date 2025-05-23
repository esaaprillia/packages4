include $(TOPDIR)/rules.mk

PKG_NAME:=python-gevent
PKG_VERSION:=24.11.1
PKG_RELEASE:=1

PYPI_NAME:=gevent
PKG_HASH:=8bd1419114e9e4a3ed33a5bad766afff9a3cf765cb440a582a1b3a9bc80c1aca

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_FLAGS:=no-mips16
PKG_BUILD_DEPENDS:=python-cffi/host python-greenlet/host python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

PYTHON3_PKG_SETUP_VARS:= \
	GEVENTSETUP_EMBED=0 \
	GEVENTSETUP_EMBED_LIBEV=0 \
	GEVENTSETUP_EMBED_CARES=0

define Package/python3-gevent
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Coroutine-based network library
  URL:=https://github.com/gevent/gevent
  DEPENDS:= \
	+python3-light \
	+python3-cffi \
	+python3-greenlet \
	+python3-zope-interface \
	+libcares \
	+libev \
	+libuv
endef

define Package/python3-gevent/description
  gevent is a coroutine -based Python networking library that uses greenlet
  to provide a high-level synchronous API on top of the libev or libuv event loop.
endef

$(eval $(call Py3Package,python3-gevent))
$(eval $(call BuildPackage,python3-gevent))
$(eval $(call BuildPackage,python3-gevent-src))
