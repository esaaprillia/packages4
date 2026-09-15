include $(TOPDIR)/rules.mk

PKG_NAME:=python-curl-cffi
PKG_VERSION:=0.16.3
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=curl_cffi
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-cffi/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-curl-cffi
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python binding for curl-impersonate fork via cffi. For commercial support, visit impersonate.pro.
  URL:=https://curl-cffi.readthedocs.io/
  DEPENDS:= \
	+python3 \
	+python3-cffi \
	+python3-certifi \
	+curl-impersonate
endef

define Package/python3-curl-cffi/description
Python binding for curl-impersonate fork via cffi. A http client that can impersonate browser tls/ja3/http2 fingerprints.
endef

$(eval $(call Py3Package,python3-curl-cffi))
$(eval $(call BuildPackage,python3-curl-cffi))
$(eval $(call BuildPackage,python3-curl-cffi-src))
