include $(TOPDIR)/rules.mk

PKG_NAME:=python-srptools
PKG_VERSION:=1.0.1
PKG_RELEASE:=1

PYPI_NAME:=srptools
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD 3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-pytest-runner/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-srptools
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Tools to implement Secure Remote Password (SRP) authentication
  URL:=https://github.com/idlesign/srptools
  DEPENDS:=+python3 +python3-click +python3-six
endef

define Package/python3-srptools/description
SRP is a secure password-based authentication and key-exchange protocol - a password-authenticated key agreement protocol (PAKE).
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-srptools))
$(eval $(call BuildPackage,python3-srptools))
$(eval $(call BuildPackage,python3-srptools-src))
