include $(TOPDIR)/rules.mk

PKG_NAME:=python-rfc8785
PKG_VERSION:=0.1.4
PKG_RELEASE:=1

PYPI_NAME:=rfc8785
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-rfc8785
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A pure-Python implementation of RFC 8785 (JSON Canonicalization Scheme)
  URL:=https://trailofbits.github.io/rfc8785.py/
  DEPENDS:=+python3
endef

define Package/python3-rfc8785/description
A pure-Python, no-dependency implementation of RFC 8785, a.k.a. JSON Canonicalization Scheme or JCS.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-rfc8785))
$(eval $(call BuildPackage,python3-rfc8785))
$(eval $(call BuildPackage,python3-rfc8785-src))
