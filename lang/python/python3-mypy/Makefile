include $(TOPDIR)/rules.mk

PKG_NAME:=python-mypy
PKG_VERSION:=1.13.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=mypy
PKG_HASH:=0291a61b6fbf3e6673e3405cfcc0e7650bebc7939659fdca2702958038bd835e

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-types-psutil/host python-mypy-extensions/host python-types-setuptools/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-mypy
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Optional static typing for Python
  URL:=https://www.mypy-lang.org/
  DEPENDS:=+python3 +python3-mypy-extensions +python3-orjson +python3-typing-extensions +python3-lxml +python3-psutil +python3-setuptools
endef

define Package/python3-mypy/description
Add type annotations to your Python programs, and use mypy to type check them. Mypy is essentially a Python linter on steroids, and it can catch many programming errors by analyzing your program, without actually having to run it. Mypy has a powerful type system with features such as type inference, gradual typing, generics and union types.
endef

$(eval $(call Py3Package,python3-mypy))
$(eval $(call BuildPackage,python3-mypy))
$(eval $(call BuildPackage,python3-mypy-src))
