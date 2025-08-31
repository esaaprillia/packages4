include $(TOPDIR)/rules.mk

PKG_NAME:=sysv-ipc
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=sysv-ipc
PYPI_SOURCE_NAME:=sysv_ipc
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-sysv-ipc
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=System V IPC primitives (semaphores, shared memory and message queues) for Python
  URL:=http://semanchuk.com/philip/sysv_ipc/
  DEPENDS:=+python3
endef

define Package/python3-sysv-ipc/description
Sysv_ipc gives Python programs access to System V semaphores, shared memory and message queues. Most (all?) Unixes (including OS X) support System V IPC. Windows+Cygwin 1.7 might also work.
endef

$(eval $(call Py3Package,python3-sysv-ipc))
$(eval $(call BuildPackage,python3-sysv-ipc))
$(eval $(call BuildPackage,python3-sysv-ipc-src))
