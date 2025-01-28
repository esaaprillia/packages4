include $(TOPDIR)/rules.mk

PKG_NAME:=python-unasync
PKG_VERSION:=0.6.0
PKG_RELEASE:=1

PYPI_NAME:=unasync
PKG_HASH:=a9d01ace3e1068b20550ab15b7f9723b15b8bcde728bc1770bcb578374c7ee58

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0 MIT
PKG_LICENSE_FILES:=LICENSE LICENSE.APACHE2 LICENSE.MIT

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-unasync
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The async transformation code.
  URL:=https://github.com/python-trio/unasync
  DEPENDS:=+python3 +python3-tokenize-rt +python3-setuptools
endef

define Package/python3-unasync/description
Welcome to unasync, a project that can transform your asynchronous code into synchronous code.
endef

$(eval $(call Py3Package,python3-unasync))
$(eval $(call BuildPackage,python3-unasync))
$(eval $(call BuildPackage,python3-unasync-src))
$(eval $(call HostBuild))