include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyflakes
PKG_VERSION:=3.2.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=pyflakes
PKG_HASH:=1c61603ff154621fb2a9172037d84dca3500def8c8b630657d1701f026f8af3f

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyflakes
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=passive checker of Python programs
  URL:=https://pypi.org/project/pyflakes
  DEPENDS:=+python3
endef

define Package/python3-pyflakes/description
A simple program which checks Python source files for errors.
Pyflakes analyzes programs and detects various errors. It works by parsing the source file, not importing it, so it is safe to use on modules with side effects. It’s also much faster.
endef

$(eval $(call Py3Package,python3-pyflakes))
$(eval $(call BuildPackage,python3-pyflakes))
$(eval $(call BuildPackage,python3-pyflakes-src))
