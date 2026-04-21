include $(TOPDIR)/rules.mk

PKG_NAME:=python-zipstream-ng
PKG_VERSION:=1.9.0
PKG_RELEASE:=1

PYPI_NAME:=zipstream_ng
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-3.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-zipstream-ng
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A modern and easy to use streamable zip file generator
  URL:=https://github.com/pR0Ps/zipstream-ng
  DEPENDS:= \
	+python3
endef

define Package/python3-zipstream-ng/description
A modern and easy to use streamable zip file generator.
It can package and stream many files and folders into a zip on the fly without needing temporary files or excessive memory.
It can also calculate the final size of the zip file before streaming it.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-zipstream-ng))
$(eval $(call BuildPackage,python3-zipstream-ng))
$(eval $(call BuildPackage,python3-zipstream-ng-src))
