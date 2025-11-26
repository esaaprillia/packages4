include $(TOPDIR)/rules.mk

PKG_NAME:=python-wsproto
PKG_VERSION:=1.3.2
PKG_RELEASE:=1

PYPI_NAME:=wsproto
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-wsproto
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Pure-Python WebSocket protocol implementation
  URL:=https://wsproto.readthedocs.io/
  DEPENDS:=+python3 +python3-h11
endef

define Package/python3-wsproto/description
This repository contains a pure-Python implementation of a WebSocket protocol stack. It’s written from the ground up to be embeddable in whatever program you choose to use, ensuring that you can communicate via WebSockets, as defined in RFC6455, regardless of your programming paradigm.
endef

$(eval $(call Py3Package,python3-wsproto))
$(eval $(call BuildPackage,python3-wsproto))
$(eval $(call BuildPackage,python3-wsproto-src))
