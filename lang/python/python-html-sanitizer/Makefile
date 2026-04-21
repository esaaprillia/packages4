include $(TOPDIR)/rules.mk

PKG_NAME:=python-html-sanitizer
PKG_VERSION:=2.6.0
PKG_RELEASE:=1

PYPI_NAME:=html_sanitizer
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-html-sanitizer
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=HTML sanitizer
  URL:=https://github.com/matthiask/html-sanitizer/
  DEPENDS:= \
	+python3 \
	+python3-beautifulsoup4 \
	+python3-lxml \
	+python3-lxml-html-clean
endef

define Package/python3-html-sanitizer/description
This is a allowlist-based and very opinionated HTML sanitizer that can be used both for untrusted and trusted sources.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-html-sanitizer))
$(eval $(call BuildPackage,python3-html-sanitizer))
$(eval $(call BuildPackage,python3-html-sanitizer-src))
