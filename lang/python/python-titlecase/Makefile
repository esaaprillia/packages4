include $(TOPDIR)/rules.mk

PKG_NAME:=python-titlecase
PKG_VERSION:=2.4.1
PKG_RELEASE:=1

PYPI_NAME:=titlecase
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-titlecase
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python Port of John Gruber's titlecase.pl
  URL:=https://github.com/ppannuto/python-titlecase
  DEPENDS:= \
	+python3 \
	+python3-regex
endef

define Package/python3-titlecase/description
This filter changes a given text to Title Caps, and attempts to be clever about SMALL words like a/an/the in the input.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-titlecase))
$(eval $(call BuildPackage,python3-titlecase))
$(eval $(call BuildPackage,python3-titlecase-src))
