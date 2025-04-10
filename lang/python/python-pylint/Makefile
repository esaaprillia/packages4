include $(TOPDIR)/rules.mk

PKG_NAME:=python-pylint
PKG_VERSION:=3.3.4
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=pylint
PKG_HASH:=74ae7a38b177e69a9b525d0794bd8183820bfa7eb68cc1bee6e8ed22a42be4ce

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pylint
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=python code static checker
  URL:=https://pylint.readthedocs.io/en/latest/
  DEPENDS:=+python3 +python3-astroid +python3-colorama +python3-dill +python3-isort +python3-mccabe +python3-platformdirs +python3-tomlkit
endef

define Package/python3-pylint/description
Pylint is a static code analyser for Python 2 or 3. The latest version supports Python 3.9.0 and above.
Pylint analyses your code without actually running it. It checks for errors, enforces a coding standard, looks for code smells, and can make suggestions about how the code could be refactored.
endef

$(eval $(call Py3Package,python3-pylint))
$(eval $(call BuildPackage,python3-pylint))
$(eval $(call BuildPackage,python3-pylint-src))
