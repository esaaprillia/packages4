include $(TOPDIR)/rules.mk

PKG_NAME:=python-libcst
PKG_VERSION:=1.8.6
PKG_RELEASE:=1

PYPI_NAME:=libcst
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-rust/host python-setuptools-scm/host
HOST_BUILD_DEPENDS:=python-setuptools-rust/host python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-libcst
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A concrete syntax tree with AST-like properties for Python 3.0 through 3.14 programs.
  URL:=https://libcst.readthedocs.io/
  DEPENDS:=+python3 +libatomic +python3-yaml +python3-pyyaml-ft +python3-typing-extensions $(RUST_ARCH_DEPENDS)
endef

define Package/python3-libcst/description
LibCST parses Python 3.0 -> 3.14 source code as a CST tree that keeps all formatting details (comments, whitespaces, parentheses, etc). It’s useful for building automated refactoring (codemod) applications and linters.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-libcst))
$(eval $(call BuildPackage,python3-libcst))
$(eval $(call BuildPackage,python3-libcst-src))
