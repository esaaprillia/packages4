include $(TOPDIR)/rules.mk

PKG_NAME:=python-cloudflare
PKG_VERSION:=5.2.0
PKG_RELEASE:=1

PYPI_NAME:=cloudflare
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-cloudflare
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The official Python library for the cloudflare API
  URL:=https://github.com/cloudflare/cloudflare-python
  DEPENDS:= \
	+python3-light \
	+python3-httpx \
	+python3-pydantic \
	+python3-typing-extensions \
	+python3-anyio \
	+python3-distro \
	+python3-sniffio
endef

define Package/python3-cloudflare/description
The Cloudflare Python library provides convenient access to the Cloudflare REST API from any Python 3.9+ application.
endef

$(eval $(call Py3Package,python3-cloudflare))
$(eval $(call BuildPackage,python3-cloudflare))
$(eval $(call BuildPackage,python3-cloudflare-src))
