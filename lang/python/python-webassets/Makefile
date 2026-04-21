include $(TOPDIR)/rules.mk

PKG_NAME:=python-webassets
PKG_VERSION:=3.0.0
PKG_RELEASE:=1

PYPI_NAME:=webassets
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-webassets
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Media asset management for Python, with glue code for various web frameworks
  URL:=http://github.com/miracle2k/webassets/
  DEPENDS:= \
	+python3 \
	+python3-yaml \
	+python3-zope-dottedname
endef

define Package/python3-webassets/description
Asset management application for Python web development - use it to merge and compress your JavaScript and CSS files.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-webassets))
$(eval $(call BuildPackage,python3-webassets))
$(eval $(call BuildPackage,python3-webassets-src))
