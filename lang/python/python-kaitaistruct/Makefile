include $(TOPDIR)/rules.mk

PKG_NAME:=python-kaitaistruct
PKG_VERSION:=0.11
PKG_RELEASE:=1

PYPI_NAME:=kaitaistruct
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host
HOST_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-kaitaistruct
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Kaitai Struct declarative parser generator for binary data: runtime library for Python
  URL:=https://kaitai.io/
  DEPENDS:=+python3
endef

define Package/python3-kaitaistruct/description
This library implements Kaitai Struct API for Python.
Kaitai Struct is a declarative language used for describe various binary data structures, laid out in files or in memory: i.e. binary file formats, network stream packet formats, etc.
It is similar to Python's Construct 2.10 but it is language-agnostic.
The format description is done in YAML-based .ksy format, which then can be compiled into a wide range of target languages.
endef

$(eval $(call Py3Package,python3-kaitaistruct))
$(eval $(call BuildPackage,python3-kaitaistruct))
$(eval $(call BuildPackage,python3-kaitaistruct-src))
$(eval $(call HostBuild))
