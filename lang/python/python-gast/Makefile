include $(TOPDIR)/rules.mk

PKG_NAME:=python-gast
PKG_VERSION:=0.6.0
PKG_RELEASE:=1

PYPI_NAME:=gast
PKG_HASH:=88fc5300d32c7ac6ca7b515310862f71e6fdf2c029bbec7c66c0f5dd47b6b1fb

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-gast
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python AST that abstracts the underlying Python version
  URL:=https://github.com/serge-sans-paille/gast/
  DEPENDS:=+python3
endef

define Package/python3-gast/description
  A generic AST to represent Python2 and Python3’s Abstract Syntax Tree(AST).
  GAST provides a compatibility layer between the AST of various Python versions, as produced by ast.parse from the standard ast module.
endef

$(eval $(call Py3Package,python3-gast))
$(eval $(call BuildPackage,python3-gast))
$(eval $(call BuildPackage,python3-gast-src))
$(eval $(call HostBuild))
