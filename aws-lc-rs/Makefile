include $(TOPDIR)/rules.mk

PKG_NAME:=python-html5lib
PKG_VERSION:=1.1
PKG_RELEASE:=1

PYPI_NAME:=html5lib
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-html5lib
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=HTML parser based on the WHATWG HTML specification
  URL:=https://github.com/html5lib/html5lib-python
  DEPENDS:= \
	+python3 \
	+python3-six \
	+python3-webencodings
endef

define Package/python3-html5lib/description
html5lib is a pure-python library for parsing HTML. It is designed to conform to the WHATWG HTML specification, as is implemented by all major web browsers.
endef

$(eval $(call Py3Package,python3-html5lib))
$(eval $(call BuildPackage,python3-html5lib))
$(eval $(call BuildPackage,python3-html5lib-src))
