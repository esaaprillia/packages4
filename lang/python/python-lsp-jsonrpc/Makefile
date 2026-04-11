include $(TOPDIR)/rules.mk

PKG_NAME:=python-lsp-jsonrpc
PKG_VERSION:=1.1.2
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=python-lsp-jsonrpc
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-lsp-jsonrpc
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=JSON RPC 2.0 server library
  URL:=https://github.com/python-lsp/python-lsp-jsonrpc
  DEPENDS:= \
	+python3-light \
	+python3-ujson
endef

define Package/python3-lsp-jsonrpc/description
A Python 3.8+ server implementation of the JSON RPC 2.0 protocol.
This library has been pulled out of the Python LSP Server project.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-lsp-jsonrpc))
$(eval $(call BuildPackage,python3-lsp-jsonrpc))
$(eval $(call BuildPackage,python3-lsp-jsonrpc-src))
