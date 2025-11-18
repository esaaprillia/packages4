include $(TOPDIR)/rules.mk

PKG_NAME:=python-sympy
PKG_VERSION:=1.14.0
PKG_RELEASE:=1

PYPI_NAME:=sympy
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-sympy
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Computer algebra system (CAS) in Python
  URL:=https://sympy.org/
  DEPENDS:=+python3 +python3-mpmath
endef

define Package/python3-sympy/description
And many more people helped on the SymPy mailing list, reported bugs, helped organize SymPy's participation in the Google Summer of Code, the Google Highly Open Participation Contest, Google Code-In, wrote and blogged about SymPy...
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-sympy))
$(eval $(call BuildPackage,python3-sympy))
$(eval $(call BuildPackage,python3-sympy-src))
