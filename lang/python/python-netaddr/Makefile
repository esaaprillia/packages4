include $(TOPDIR)/rules.mk

PKG_NAME:=python-netaddr
PKG_VERSION:=1.3.0
PKG_RELEASE:=1

PYPI_NAME:=netaddr
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD
PKG_LICENSE_FILES:= COPYRIGHT.rst LICENSE.rst

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-netaddr
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A network address manipulation library for Python
  URL:=https://github.com/netaddr/netaddr/
  DEPENDS:= \
	+python3
endef

define Package/python3-netaddr/description
A Python library for representing and manipulating network addresses.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-netaddr))
$(eval $(call BuildPackage,python3-netaddr))
$(eval $(call BuildPackage,python3-netaddr-src))
