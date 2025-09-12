include $(TOPDIR)/rules.mk

PKG_NAME:=python-asyncinotify
PKG_VERSION:=4.2.1
PKG_RELEASE:=1

PYPI_NAME:=asyncinotify
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MPL-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-asyncinotify
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Simple and powerful Python async inotify module
  URL:=https://github.com/ProCern/asyncinotify/
  DEPENDS:=+python3-light
endef

define Package/python3-asyncinotify/description
An async python inotify package. Kept as simple and easy-to-understand as possible, while still being flexible and powerful. This is built on no external dependencies, and works through ctypes in a very obvious fashion.
This depends on Python 3.6+ features, and will not work with prior versions.
This works without any other external dependencies.
The code is available on GitHub and the documentation is available on ReadTheDocs. The package itself is available on PyPi.
endef

$(eval $(call Py3Package,python3-asyncinotify))
$(eval $(call BuildPackage,python3-asyncinotify))
$(eval $(call BuildPackage,python3-asyncinotify-src))

