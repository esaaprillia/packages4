include $(TOPDIR)/rules.mk

PKG_NAME:=python-click-shell
PKG_VERSION:=2.1
PKG_RELEASE:=1

PYPI_NAME:=click-shell
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-click-shell
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=An extension to click that easily turns your click app into a shell utility
  URL:=https://github.com/clarkperkins/click-shell
  DEPENDS:=+python3 +python3-click
endef

define Package/python3-click-shell/description
click-shell is an extension to click that easily turns your click app into a shell utility. It is built on top of the built in python cmd module, with modifications to make it work with click.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-click-shell))
$(eval $(call BuildPackage,python3-click-shell))
$(eval $(call BuildPackage,python3-click-shell-src))
