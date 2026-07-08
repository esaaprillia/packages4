include $(TOPDIR)/rules.mk

PKG_NAME:=python-ast-serialize
PKG_VERSION:=0.6.0
PKG_RELEASE:=1

PYPI_NAME:=ast_serialize
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-maturin/host
HOST_BUILD_DEPENDS:=python-maturin/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-ast-serialize
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python bindings for mypy AST serialization
  URL:=https://github.com/mypyc/ast_serialize
  DEPENDS:=+python3 $(RUST_ARCH_DEPENDS)
endef

define Package/python3-ast-serialize/description
This is a fast Python extension for parsing Python files and serializing the AST using the native binary format used by mypy.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-ast-serialize))
$(eval $(call BuildPackage,python3-ast-serialize))
$(eval $(call BuildPackage,python3-ast-serialize-src))
