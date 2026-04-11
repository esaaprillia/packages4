include $(TOPDIR)/rules.mk

PKG_NAME:=python-lsp-server
PKG_VERSION:=1.14.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=python_lsp_server
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-lsp-server
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python Language Server for the Language Server Protocol
  URL:=https://github.com/python-lsp/python-lsp-server
  DEPENDS:= \
	+python3-light \
	+python3-docstring-to-markdown \
	+python3-jedi \
	+python3-pluggy \
	+python3-lsp-jsonrpc \
	+python3-ujson \
	+python3-black
endef

define Package/python3-lsp-server/description
A Python 3.9+ implementation of the Language Server Protocol.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-lsp-server))
$(eval $(call BuildPackage,python3-lsp-server))
$(eval $(call BuildPackage,python3-lsp-server-src))
