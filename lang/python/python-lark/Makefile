include $(TOPDIR)/rules.mk

PKG_NAME:=python-lark
PKG_VERSION:=1.3.1
PKG_RELEASE:=1

PYPI_NAME:=lark
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host
HOST_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-lark
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=a modern parsing library
  URL:=https://github.com/lark-parser/lark
  DEPENDS:= \
	+python3-light
endef

define Package/python3-lark/description
Lark is a modern general-purpose parsing library for Python.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-lark))
$(eval $(call BuildPackage,python3-lark))
$(eval $(call BuildPackage,python3-lark-src))
