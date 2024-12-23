include $(TOPDIR)/rules.mk

PKG_NAME:=python-h2
PKG_VERSION:=4.1.0
PKG_RELEASE:=1

PYPI_NAME:=h2
PKG_HASH:=a83aca08fbe7aacb79fec788c9c0bac936343560ed9ec18b82a13a12c28d2abb

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-h2
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=HTTP/2 State-Machine based protocol implementation
  URL:=https://github.com/python-hyper/h2
  DEPENDS:=+python3-light +python3-hyperframe +python3-hpack
endef

define Package/python3-h2/description
This repository contains a pure-Python implementation of a HTTP/2 protocol stack.
It’s written from the ground up to be embeddable in whatever program you choose to use, ensuring that you can speak HTTP/2 regardless of your programming paradigm.
endef

$(eval $(call Py3Package,python3-h2))
$(eval $(call BuildPackage,python3-h2))
$(eval $(call BuildPackage,python3-h2-src))
