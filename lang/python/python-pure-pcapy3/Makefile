include $(TOPDIR)/rules.mk

PKG_NAME:=python-pure-pcapy3
PKG_VERSION:=1.0.1
PKG_RELEASE:=1

PYPI_NAME:=pure-pcapy3
PKG_HASH:=b99e45f16d4ad410eb5ebbc7d5d39e353d7eda7e86f0ad52e4dc5c45a7b3ea92

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD
PKG_LICENSE_FILES:=

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pure-pcapy3
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Pure Python reimplementation of pcapy
  URL:=http://bitbucket.org/viraptor/pure-pcapy/overview
  DEPENDS:=+python3-light
endef

define Package/python3-pure-pcapy3/description
  This package provides an API-compatible replacement
  for the popular pcapy package.
endef

$(eval $(call Py3Package,python3-pure-pcapy3))
$(eval $(call BuildPackage,python3-pure-pcapy3))
$(eval $(call BuildPackage,python3-pure-pcapy3-src))
