include $(TOPDIR)/rules.mk

PKG_NAME:=python-watchdog
PKG_VERSION:=6.0.0
PKG_RELEASE:=1

PYPI_NAME:=watchdog
PKG_HASH:=9ddf7c82fda3ae8e24decda1338ede66e1c99883db93711d8fb941eaa2d8c282

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=COPYING LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-watchdog
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Filesystem events monitoring
  URL:=https://github.com/gorakhargosh/watchdog
  DEPENDS:= \
	+python3-codecs \
	+python3-ctypes \
	+python3-logging \
	+python3-pydoc \
	+python3-yaml
endef

define Package/python3-watchdog/description
  Python library and shell utilities to monitor filesystem events.
endef

$(eval $(call Py3Package,python3-watchdog))
$(eval $(call BuildPackage,python3-watchdog))
$(eval $(call BuildPackage,python3-watchdog-src))
