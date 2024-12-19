include $(TOPDIR)/rules.mk

PKG_NAME:=python-curio
PKG_VERSION:=1.6
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=curio
PKG_HASH:=562a586db20216ba7d2be8263deb9eb079e56048f9b8906d11d5f45aa81c5247

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-curio
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Curio is a coroutine-based library for concurrent systems programming
  URL:=https://github.com/dabeaz/curio
  DEPENDS:=+python3
endef

define Package/python3-curio/description
Curio is a coroutine-based library for concurrent Python systems programming using async/await. It provides standard programming abstractions such as tasks, sockets, files, locks, and queues as well as some advanced features such as support for structured concurrency. It works on Unix and Windows and has zero dependencies. You'll find it to be familiar, small, fast, and fun.
endef

$(eval $(call Py3Package,python3-curio))
$(eval $(call BuildPackage,python3-curio))
$(eval $(call BuildPackage,python3-curio-src))
$(eval $(call HostBuild))
