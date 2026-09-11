include $(TOPDIR)/rules.mk

PKG_NAME:=python-httptools
PKG_VERSION:=0.8.0
PKG_RELEASE:=1

PYPI_NAME:=httptools
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-httptools
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Fast HTTP parser
  URL:=https://github.com/MagicStack/httptools
  DEPENDS:=+python3
endef

define Package/python3-httptools/description
  httptools is a Python binding for the nodejs HTTP parser.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-httptools))
$(eval $(call BuildPackage,python3-httptools))
$(eval $(call BuildPackage,python3-httptools-src))
