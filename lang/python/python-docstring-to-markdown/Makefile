include $(TOPDIR)/rules.mk

PKG_NAME:=python-docstring-to-markdown
PKG_VERSION:=0.17
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=docstring_to_markdown
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-docstring-to-markdown
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=On the fly conversion of Python docstrings to markdown
  URL:=https://github.com/python-lsp/docstring-to-markdown
  DEPENDS:= \
	+python3-light \
	+python3-importlib-metadata \
	+python3-typing-extensions
endef

define Package/python3-docstring-to-markdown/description
On the fly conversion of Python docstrings to markdown
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-docstring-to-markdown))
$(eval $(call BuildPackage,python3-docstring-to-markdown))
$(eval $(call BuildPackage,python3-docstring-to-markdown-src))
