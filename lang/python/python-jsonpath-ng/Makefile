# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-jsonpath-ng
PKG_VERSION:=1.7.0
PKG_RELEASE:=1
PKG_MAINTAINER:=Josef Schlehofer <pepe.schlehofer@gmail.com> 

PYPI_NAME:=jsonpath-ng
PKG_HASH:=f6f5f7fd4e5ff79c785f1573b394043b39849fb2bb47bcead935d12b00beab3c

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-jsonpath-ng
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  URL:=https://github.com/h2non/jsonpath-ng
  TITLE:=Standard compliant implementation of JSONPath
  DEPENDS:= \
    +python3-light \
    +python3-logging \
    +python3-ply \
    +python3-six \
    +python3-decorator
endef

define Package/python3-jsonpath-ng/description
A final implementation of JSONPath for Python that aims to be standard
compliant, including arithmetic and binary comparison operators, as
defined in the original JSONPath proposal.

This packages merges both jsonpath-rw and jsonpath-rw-ext and provides
several AST API enhancements, such as the ability to update or removes
nodes in the tree.
endef

$(eval $(call Py3Package,python3-jsonpath-ng))
$(eval $(call BuildPackage,python3-jsonpath-ng))
$(eval $(call BuildPackage,python3-jsonpath-ng-src))
