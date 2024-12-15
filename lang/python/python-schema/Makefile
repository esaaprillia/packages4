# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-schema
PKG_VERSION:=0.7.7
PKG_RELEASE:=1
PKG_MAINTAINER:=Josef Schlehofer <pepe.schlehofer@gmail.com> 

PYPI_NAME:=schema
PKG_HASH:=7da553abd2958a19dc2547c388cde53398b39196175a9be59ea1caf5ab0a1807

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE-MIT

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-schema
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  URL:=https://github.com/keleshev/schema
  TITLE:=Simple data validation library
  DEPENDS:=+python3-light +python3-contextlib2
endef

define Package/python3-schema/description
schema is a library for validating Python data structures, such as those
obtained from config-files, forms, external services or command-line
parsing, converted from JSON/YAML (or something else) to Python
data-types.
endef

$(eval $(call Py3Package,python3-schema))
$(eval $(call BuildPackage,python3-schema))
$(eval $(call BuildPackage,python3-schema-src))
