include $(TOPDIR)/rules.mk

PKG_NAME:=python-numexpr
PKG_VERSION:=2.10.2
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PYPI_NAME:=numexpr
PKG_HASH:=b0aff6b48ebc99d2f54f27b5f73a58cb92fde650aeff1b397c71c8788b4fff1a

HOST_BUILD_DEPENDS:=numpy/host
PKG_BUILD_DEPENDS:=numpy/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-numexpr
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Fast numerical expression evaluator for NumPy
  URL:=https://github.com/pydata/numexpr
  DEPENDS:=+python3 +python3-numpy
endef

define Package/python3-numexpr/description
NumExpr is a fast numerical expression evaluator for NumPy. With it, expressions that operate on arrays (like '3*a+4*b') are accelerated and use less memory than doing the same calculation in Python.
In addition, its multi-threaded capabilities can make use of all your cores – which generally results in substantial performance scaling compared to NumPy.
Last but not least, numexpr can make use of Intel’s VML (Vector Math Library, normally integrated in its Math Kernel Library, or MKL). This allows further acceleration of transcendent expressions.
endef

$(eval $(call Py3Package,python3-numexpr))
$(eval $(call BuildPackage,python3-numexpr))
$(eval $(call BuildPackage,python3-numexpr-src))
$(eval $(call HostBuild))
