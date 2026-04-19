include $(TOPDIR)/rules.mk

PKG_NAME:=python-tldextract
PKG_VERSION:=5.3.1
PKG_RELEASE:=1

PYPI_NAME:=tldextract
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-tldextract
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Accurately separates a URL's subdomain, domain, and public suffix, using the Public Suffix List (PSL).
  URL:=https://github.com/john-kurkowski/tldextract
  DEPENDS:= \
	+python3 \
	+python3-idna \
	+python3-requests \
	+python3-requests-file \
	+python3-filelock
endef

define Package/python3-tldextract/description
  Accurately separates a URL's subdomain, domain, and public suffix, using the Public Suffix List (PSL). By default, this includes the public ICANN TLDs and their exceptions. You can optionally support the Public Suffix List's private domains as well.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-tldextract))
$(eval $(call BuildPackage,python3-tldextract))
$(eval $(call BuildPackage,python3-tldextract-src))
