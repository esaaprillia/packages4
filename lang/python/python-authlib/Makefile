include $(TOPDIR)/rules.mk

PKG_NAME:=python-authlib
PKG_VERSION:=1.6.5
PKG_RELEASE:=1

PYPI_NAME:=authlib
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-authlib
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The ultimate Python library in building OAuth and OpenID Connect servers and clients.
  URL:=https://github.com/authlib/authlib
  DEPENDS:=+python3 +python3-cryptography
endef

define Package/python3-authlib/description
The ultimate Python library in building OAuth and OpenID Connect servers. JWS, JWK, JWA, JWT are included.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-authlib))
$(eval $(call BuildPackage,python3-authlib))
$(eval $(call BuildPackage,python3-authlib-src))
