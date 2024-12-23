include $(TOPDIR)/rules.mk

PKG_NAME:=python-socksio
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PYPI_NAME:=socksio
PKG_HASH:=f88beb3da5b5c38b9890469de67d0cb0f9d494b78b106ca1845f96c10b91c4ac

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:= LICENSE

PKG_BUILD_DEPENDS:=python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-socksio
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Sans-I/O implementation of SOCKS4, SOCKS4A, and SOCKS5
  URL:=https://pypi.org/project/socksio
  DEPENDS:=+python3-light
endef

define Package/python3-socksio/description
Client-side sans-I/O SOCKS proxy implementation. Supports SOCKS4, SOCKS4A, and SOCKS5.
socksio is a sans-I/O library similar to h11 or h2, this means the library itself does not handle the actual sending of the bytes through the network, it only deals with the implementation details of the SOCKS protocols so you can use it in any I/O library you want.
endef

$(eval $(call Py3Package,python3-socksio))
$(eval $(call BuildPackage,python3-socksio))
$(eval $(call BuildPackage,python3-socksio-src))
