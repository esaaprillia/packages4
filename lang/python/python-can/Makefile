include $(TOPDIR)/rules.mk

PKG_NAME:=python-can
PKG_VERSION:=4.6.1
PKG_RELEASE:=1

PYPI_NAME:=python_can
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-3.0
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-can
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Controller Area Network interface module for Python
  URL:=https://github.com/hardbyte/python-can
  DEPENDS:= \
	+python3-light \
	+python3-wrapt \
	+python3-packaging \
	+python3-typing-extensions
endef

define Package/python3-can/description
The Controller Area Network is a bus standard designed to allow microcontrollers and devices to communicate with each other.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-can))
$(eval $(call BuildPackage,python3-can))
$(eval $(call BuildPackage,python3-can-src))
