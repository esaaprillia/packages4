include $(TOPDIR)/rules.mk

PKG_NAME:=python-uritemplate
PKG_VERSION:=4.2.0
PKG_RELEASE:=1

PYPI_NAME:=uritemplate
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD 3-Clause OR Apache-2.0
PKG_LICENSE_FILES:=LICENSE LICENSE.APACHE LICENSE.BSD

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-uritemplate
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Implementation of RFC 6570 URI Templates
  URL:=https://uritemplate.readthedocs.org/
  DEPENDS:=+python3-light
endef

define Package/python3-uritemplate/description
Simple python library to deal with URI Templates.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-uritemplate))
$(eval $(call BuildPackage,python3-uritemplate))
$(eval $(call BuildPackage,python3-uritemplate-src))
