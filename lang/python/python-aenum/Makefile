include $(TOPDIR)/rules.mk

PKG_NAME:=python-aenum
PKG_VERSION:=3.1.15
PKG_RELEASE:=1

PYPI_NAME:=aenum
PKG_HASH:=8cbd76cd18c4f870ff39b24284d3ea028fbe8731a58df3aa581e434c575b9559

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-aenum
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Advanced Enumerations for Python
  URL:=https://github.com/ethanfurman/aenum
  DEPENDS:=+python3
endef

define Package/python3-aenum/description
Advanced Enumerations (compatible with Python's stdlib Enum), NamedTuples, and NamedConstants
aenum includes a Python stdlib Enum-compatible data type, as well as a metaclass-based NamedTuple implementation and a NamedConstant class.
An Enum is a set of symbolic names (members) bound to unique, constant values. Within an enumeration, the members can be compared by identity, and the enumeration itself can be iterated over. If using Python 3 there is built-in support for unique values, multiple values, auto-numbering, and suspension of aliasing (members with the same value are not identical), plus the ability to have values automatically bound to attributes.
A NamedTuple is a class-based, fixed-length tuple with a name for each possible position accessible using attribute-access notation as well as the standard index notation.
A NamedConstant is a class whose members cannot be rebound; it lacks all other Enum capabilities, however; consequently, it can have duplicate values.
endef

$(eval $(call Py3Package,python3-aenum))
$(eval $(call BuildPackage,python3-aenum))
$(eval $(call BuildPackage,python3-aenum-src))
