include $(TOPDIR)/rules.mk

PKG_NAME:=python-mistune
PKG_VERSION:=3.3.2
PKG_RELEASE:=1

PYPI_NAME:=mistune
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-mistune
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A sane and fast Markdown parser with useful plugins and renderers
  URL:=https://mistune.lepture.com/
  DEPENDS:=+python3
endef

define Package/python3-mistune/description
A fast yet powerful Python Markdown parser with renderers and plugins.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-mistune))
$(eval $(call BuildPackage,python3-mistune))
$(eval $(call BuildPackage,python3-mistune-src))
