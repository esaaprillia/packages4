include $(TOPDIR)/rules.mk

PKG_NAME:=python-libnacl
PKG_VERSION:=2.1.0
PKG_RELEASE:=1

PYPI_NAME:=libnacl
PKG_HASH:=f3418da7df29e6d9b11fd7d990289d16397dc1020e4e35192e11aee826922860

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-libnacl
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python bindings for libsodium based on ctypes
  URL:=https://github.com/saltstack/libnacl
  DEPENDS:=+python3-light +libsodium
endef

define Package/python3-libnacl/description
This library is used to gain direct access to the functions exposed by Daniel J. Bernstein’s nacl library via libsodium. It has been constructed to maintain extensive documentation on how to use nacl as well as being completely portable. The file in libnacl/__init__.py can be pulled out and placed directly in any project to give a single file binding to all of nacl.
endef

$(eval $(call Py3Package,python3-libnacl))
$(eval $(call BuildPackage,python3-libnacl))
$(eval $(call BuildPackage,python3-libnacl-src))
