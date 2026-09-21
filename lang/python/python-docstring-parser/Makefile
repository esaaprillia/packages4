include $(TOPDIR)/rules.mk

PKG_NAME:=python-docstring-parser
PKG_VERSION:=0.18.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md

PYPI_NAME:=docstring_parser
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-hatchling/host
HOST_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-docstring-parser
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Parse Python docstrings in reST, Google and Numpydoc format
  URL:=https://github.com/rr-/docstring_parser
  DEPENDS:= \
	+python3
endef

define Package/python3-docstring-parser/description
Parse Python docstrings. Currently support ReST, Google, Numpydoc-style and Epydoc docstrings.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-docstring-parser))
$(eval $(call BuildPackage,python3-docstring-parser))
$(eval $(call BuildPackage,python3-docstring-parser-src))
