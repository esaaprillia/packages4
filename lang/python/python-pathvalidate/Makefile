include $(TOPDIR)/rules.mk

PKG_NAME:=python-pathvalidate
PKG_VERSION:=3.3.1
PKG_RELEASE:=1

PYPI_NAME:=pathvalidate
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pathvalidate
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=pathvalidate is a Python library to sanitize/validate a string such as filenames/file-paths/etc.
  URL:=https://github.com/thombashi/pathvalidate
  DEPENDS:= \
	+python3
endef

define Package/python3-pathvalidate/description
pathvalidate is a Python library to sanitize/validate a string such as filenames/file-paths/etc.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pathvalidate))
$(eval $(call BuildPackage,python3-pathvalidate))
$(eval $(call BuildPackage,python3-pathvalidate-src))
