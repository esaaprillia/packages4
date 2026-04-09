include $(TOPDIR)/rules.mk

PKG_NAME:=python-rfc3987-syntax
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PYPI_NAME:=rfc3987_syntax
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host
HOST_BUILD_DEPENDS:=python-hatchling/host python-lark/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-rfc3987-syntax
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Helper functions to syntactically validate strings according to RFC 3987.
  URL:=https://github.com/willynilly/rfc3987-syntax
  DEPENDS:= \
	+python3-light \
	+python3-lark
endef

define Package/python3-rfc3987-syntax/description
Helper functions to parse and validate the syntax of terms defined in RFC 3987 — the IETF standard for Internationalized Resource Identifiers (IRIs).
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-rfc3987-syntax))
$(eval $(call BuildPackage,python3-rfc3987-syntax))
$(eval $(call BuildPackage,python3-rfc3987-syntax-src))
