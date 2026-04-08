include $(TOPDIR)/rules.mk

PKG_NAME:=python-fqdn
PKG_VERSION:=1.5.1
PKG_RELEASE:=1

PYPI_NAME:=fqdn
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MPL-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-fqdn
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=RFC-compliant FQDN validation and manipulation for Python.
  URL:=https://github.com/ypcrts/fqdn
  DEPENDS:= \
	+python3-light
endef

define Package/python3-fqdn/description
Python FQDN Fully-Qualified Domain Names
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-fqdn))
$(eval $(call BuildPackage,python3-fqdn))
$(eval $(call BuildPackage,python3-fqdn-src))
