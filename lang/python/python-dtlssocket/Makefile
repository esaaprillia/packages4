include $(TOPDIR)/rules.mk

PKG_NAME:=python-dtlssocket
PKG_VERSION:=0.2.2
PKG_RELEASE:=1

PYPI_NAME:=dtlssocket
PKG_HASH:=4e76d715726e0c46dc09e35da9b6717b063c2389b06c1723decc3ba38b7387f4

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=EPL-1.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-dtlssocket
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=DTLSSocket is a cython wrapper for tinydtls with a Socket like interface
  URL:=https://git.fslab.de/jkonra2m/tinydtls-cython
  DEPENDS:=+python3-light
endef

define Package/python3-dtlssocket/description
This is a cython wrapper for tinydtls.
It currently implements a socket like Interface with sendmsg and readmsg. All other calls are passt to the underlying socket.
endef

PYTHON3_PKG_SETUP_GLOBAL_ARGS += build_ext
PYTHON3_PKG_WHEEL_NAME:=DTLSSocket
PYTHON3_PKG_WHEEL_VERSION:=0.2.2

$(eval $(call Py3Package,python3-dtlssocket))
$(eval $(call BuildPackage,python3-dtlssocket))
$(eval $(call BuildPackage,python3-dtlssocket-src))
