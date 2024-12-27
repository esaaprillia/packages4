include $(TOPDIR)/rules.mk

PKG_NAME:=python-absl-py
PKG_VERSION:=2.1.0
PKG_RELEASE:=1

PYPI_NAME:=absl-py
PKG_HASH:=7820790efbb316739cde8b4e19357243fc3608a152024288513dd968d7d959ff

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-absl-py
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Abseil Common Libraries (Python)
  URL:=https://github.com/abseil/abseil-py
  DEPENDS:=+python3
endef

define Package/python3-absl-py/description
This repository is a collection of Python library code for building Python applications. The code is collected from Google's own Python code base, and has been extensively tested and used in production.
endef

$(eval $(call Py3Package,python3-absl-py))
$(eval $(call BuildPackage,python3-absl-py))
$(eval $(call BuildPackage,python3-absl-py-src))
