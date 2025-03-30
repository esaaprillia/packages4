include $(TOPDIR)/rules.mk

PKG_NAME:=python-mypy
PKG_VERSION:=1.15.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=mypy
PKG_HASH:=404534629d51d3efea5c800ee7c42b72a6554d6c400e6a79eafe15d11341fd43

HOST_BUILD_DEPENDS:=python-types-psutil/host python-mypy-extensions/host python-types-setuptools/host
PKG_BUILD_DEPENDS:=python-types-psutil/host python-mypy-extensions/host python-types-setuptools/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-mypy
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Optional static typing for Python
  URL:=https://www.mypy-lang.org/
  DEPENDS:=+python3 +python3-typing-extensions +python3-mypy-extensions
endef

define Package/python3-mypy/description
Add type annotations to your Python programs, and use mypy to type check them. Mypy is essentially a Python linter on steroids, and it can catch many programming errors by analyzing your program, without actually having to run it. Mypy has a powerful type system with features such as type inference, gradual typing, generics and union types.
endef

$(eval $(call Py3Package,python3-mypy))
$(eval $(call BuildPackage,python3-mypy))
$(eval $(call BuildPackage,python3-mypy-src))
$(eval $(call HostBuild))
