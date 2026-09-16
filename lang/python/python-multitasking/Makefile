include $(TOPDIR)/rules.mk

PKG_NAME:=python-multitasking
PKG_VERSION:=0.0.13
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt

PYPI_NAME:=multitasking
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-multitasking
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Non-blocking Python methods using decorators
  URL:=https://github.com/ranaroussi/multitasking
  DEPENDS:= \
	+python3
endef

define Package/python3-multitasking/description
MultiTasking is a lightweight Python library that lets you convert your Python methods into asynchronous, non-blocking methods simply by using a decorator.
endef

$(eval $(call Py3Package,python3-multitasking))
$(eval $(call BuildPackage,python3-multitasking))
$(eval $(call BuildPackage,python3-multitasking-src))
