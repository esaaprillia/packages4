include $(TOPDIR)/rules.mk

PKG_NAME:=python-filelock
PKG_VERSION:=3.16.1
PKG_RELEASE:=1

PYPI_NAME:=filelock
PKG_HASH:=c249fbfcd5db47e5e2d6d62198e565475ee65e4831e2561c8e313fa7eb961435

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Unlicense
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-filelock
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A platform independent file lock.
  URL:=https://py-filelock.readthedocs.io/
  DEPENDS:=+python3-light +python3-typing-extensions
endef

define Package/python3-filelock/description
This package contains a single module, which implements a platform independent file lock in Python, which provides a simple way of inter-process communication
endef

$(eval $(call Py3Package,python3-filelock))
$(eval $(call BuildPackage,python3-filelock))
$(eval $(call BuildPackage,python3-filelock-src))
