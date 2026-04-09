include $(TOPDIR)/rules.mk

PKG_NAME:=python-rfc3986-validator
PKG_VERSION:=0.1.1
PKG_RELEASE:=1

PYPI_NAME:=rfc3986_validator
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-pytest-runner/host
HOST_BUILD_DEPENDS:=python-pytest-runner/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-rfc3986-validator
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Pure python rfc3986 validator
  URL:=https://github.com/naimetti/rfc3986-validator
  DEPENDS:=+python3
endef

define Package/python3-rfc3986-validator/description
A pure python RFC3986 validator
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-rfc3986-validator))
$(eval $(call BuildPackage,python3-rfc3986-validator))
$(eval $(call BuildPackage,python3-rfc3986-validator-src))
