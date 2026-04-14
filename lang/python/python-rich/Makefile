include $(TOPDIR)/rules.mk

PKG_NAME:=python-rich
PKG_VERSION:=15.0.0
PKG_RELEASE:=1

PYPI_NAME:=rich
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host python-pygments/host python-markdown-it-py/host
HOST_BUILD_DEPENDS:=python-poetry-core/host python-pygments/host python-markdown-it-py/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-rich
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Render rich text, tables, progress bars, syntax highlighting, markdown and more to the terminal
  URL:=https://rich.readthedocs.io/en/latest/
  DEPENDS:= \
	+python3 \
	+python3-pygments \
	+python3-markdown-it-py
endef

define Package/python3-rich/description
Rich is a Python library for rich text and beautiful formatting in the terminal.

The Rich API makes it easy to add color and style to terminal output. Rich can also render pretty tables, progress bars, markdown, syntax highlighted source code, tracebacks, and more — out of the box.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-rich))
$(eval $(call BuildPackage,python3-rich))
$(eval $(call BuildPackage,python3-rich-src))
