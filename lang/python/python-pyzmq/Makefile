include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyzmq
PKG_VERSION:=26.2.1
PKG_RELEASE:=1

PYPI_NAME:=pyzmq
PKG_HASH:=17d72a74e5e9ff3829deb72897a175333d3ef5b5413948cae3cf7ebf0b02ecca

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python-cffi/host python-cython/host python-packaging/host python-scikit-build-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyzmq
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=PyZMQ: Python bindings for zeromq
  URL:=https://github.com/zeromq/pyzmq
  DEPENDS:=+python3 +python3-cffi +libzmq-nc
endef

define Package/python3-pyzmq/description
This package contains Python bindings for ZeroMQ. ØMQ is a lightweight and fast messaging implementation.
endef

$(eval $(call Py3Package,python3-pyzmq))
$(eval $(call BuildPackage,python3-pyzmq))
$(eval $(call BuildPackage,python3-pyzmq-src))
