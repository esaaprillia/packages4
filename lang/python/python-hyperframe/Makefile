include $(TOPDIR)/rules.mk

PKG_NAME:=python-hyperframe
PKG_VERSION:=6.1.0
PKG_RELEASE:=1

PYPI_NAME:=hyperframe
PKG_HASH:=f630908a00854a7adeabd6382b43923a4c4cd4b821fcb527e6ab9e15382a3b08

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-hyperframe
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=HTTP/2 framing layer for Python
  URL:=https://github.com/python-hyper/hyperframe/
  DEPENDS:=+python3-light
endef

define Package/python3-hyperframe/description
This library contains the HTTP/2 framing code used in the hyper project. It provides a pure-Python codebase that is capable of decoding a binary stream into HTTP/2 frames.
This library is used directly by hyper and a number of other projects to provide HTTP/2 frame decoding logic.
endef

$(eval $(call Py3Package,python3-hyperframe))
$(eval $(call BuildPackage,python3-hyperframe))
$(eval $(call BuildPackage,python3-hyperframe-src))
