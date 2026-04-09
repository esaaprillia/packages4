include $(TOPDIR)/rules.mk

PKG_NAME:=python-asttokens
PKG_VERSION:=3.0.1
PKG_RELEASE:=1

PYPI_NAME:=asttokens
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host
HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-astroid/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-asttokens
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Annotate AST trees with source code positions
  URL:=https://github.com/gristlabs/asttokens
  DEPENDS:=+python3 +python3-astroid
endef

define Package/python3-asttokens/description
  The asttokens module annotates Python abstract syntax trees (ASTs) with the positions of tokens and text in the source code that generated them.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-asttokens))
$(eval $(call BuildPackage,python3-asttokens))
$(eval $(call BuildPackage,python3-asttokens-src))
