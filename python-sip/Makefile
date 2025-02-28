include $(TOPDIR)/rules.mk

PKG_NAME:=python-sip
PKG_VERSION:=6.10.0
PKG_RELEASE:=1

PYPI_NAME:=sip
PKG_HASH:=fa0515697d4c98dbe04d9e898d816de1427e5b9ae5d0e152169109fd21f5d29c

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-sip
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A Python bindings generator for C/C++ libraries
  URL:=https://github.com/Python-SIP/sip
  DEPENDS:=+python3 +python3-packaging +python3-setuptools
endef

define Package/python3-sip/description
One of the features of Python that makes it so powerful is the ability to take existing libraries, written in C or C++, and make them available as Python extension modules. Such extension modules are often called bindings for the library.
endef

$(eval $(call Py3Package,python3-sip))
$(eval $(call BuildPackage,python3-sip))
$(eval $(call BuildPackage,python3-sip-src))
$(eval $(call HostBuild))
