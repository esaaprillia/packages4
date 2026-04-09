include $(TOPDIR)/rules.mk

PKG_NAME:=python-jsonpointer
PKG_VERSION:=3.1.1
PKG_RELEASE:=1

PYPI_NAME:=jsonpointer
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD
PKG_LICENSE_FILES:=LICENSE.txt

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-jsonpointer
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Identify specific nodes in a JSON document (RFC 6901)
  URL:=https://github.com/stefankoegl/python-json-pointer
  DEPENDS:= \
	+python3-light
endef

define Package/python3-jsonpointer/description
Library to resolve JSON Pointers according to RFC 6901
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-jsonpointer))
$(eval $(call BuildPackage,python3-jsonpointer))
$(eval $(call BuildPackage,python3-jsonpointer-src))
