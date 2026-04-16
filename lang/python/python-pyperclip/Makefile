include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyperclip
PKG_VERSION:=1.11.0
PKG_RELEASE:=1

PYPI_NAME:=pyperclip
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-setuptools-scm/host
HOST_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pyperclip
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A cross-platform clipboard module for Python. (Only handles plain text for now.)
  URL:=https://github.com/asweigart/pyperclip
  DEPENDS:=+python3
endef

define Package/python3-pyperclip/description
Pyperclip is a cross-platform Python module for copy and paste clipboard functions. It works with Python 2 and 3.
endef

$(eval $(call Py3Package,python3-pyperclip))
$(eval $(call BuildPackage,python3-pyperclip))
$(eval $(call BuildPackage,python3-pyperclip-src))
$(eval $(call HostBuild))
