include $(TOPDIR)/rules.mk

PKG_NAME:=python-pydivert
PKG_VERSION:=3.1.1
PKG_RELEASE:=1

PYPI_NAME:=pydivert
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=GPL-2.0 LGPL-3.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host
HOST_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pydivert
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python binding to windivert driver
  URL:=https://github.com/ffalcinelli/pydivert
  DEPENDS:=+python3
endef

define Package/python3-pydivert/description
PyDivert is a powerful Python binding for WinDivert, a Windows driver that allows user-mode applications to capture, modify, and drop network packets sent to or from the Windows network stack.
endef

$(eval $(call Py3Package,python3-pydivert))
$(eval $(call BuildPackage,python3-pydivert))
$(eval $(call BuildPackage,python3-pydivert-src))
$(eval $(call HostBuild))
