include $(TOPDIR)/rules.mk

PKG_NAME:=python-h11
PKG_VERSION:=0.16.0
PKG_RELEASE:=1

PYPI_NAME:=h11
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-h11
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A pure-Python, bring-your-own-I/O implementation of HTTP/1.1
  URL:=https://github.com/python-hyper/h11
  DEPENDS:=+python3-light +python3-typing-extensions
endef

define Package/python3-h11/description
This is a little HTTP/1.1 library written from scratch in Python, heavily inspired by hyper-h2.
endef

$(eval $(call Py3Package,python3-h11))
$(eval $(call BuildPackage,python3-h11))
$(eval $(call BuildPackage,python3-h11-src))
$(eval $(call HostBuild))
