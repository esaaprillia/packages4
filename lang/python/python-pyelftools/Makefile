include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyelftools
PKG_VERSION:=0.33
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=PD
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=pyelftools
PKG_HASH:=skip

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pyelftools
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Library for analyzing ELF files and DWARF debugging information
  URL:=https://github.com/eliben/pyelftools
  DEPENDS:= \
	+python3
endef

define Package/python3-pyelftools/description
pyelftools is a pure-Python library for parsing and analyzing ELF files and DWARF debugging information. See the User's guide for more details.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pyelftools))
$(eval $(call BuildPackage,python3-pyelftools))
$(eval $(call BuildPackage,python3-pyelftools-src))
