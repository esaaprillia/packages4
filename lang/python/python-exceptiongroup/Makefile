include $(TOPDIR)/rules.mk

PKG_NAME:=python-exceptiongroup
PKG_VERSION:=1.2.2
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=exceptiongroup
PKG_HASH:=47c2edf7c6738fafb49fd34290706d1a1a2f4d1c6df275526b62cbb4aa5393cc

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-exceptiongroup
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Backport of PEP 654 (exception groups)
  URL:=https://github.com/agronholm/exceptiongroup
  DEPENDS:=+python3-light
endef

define Package/python3-exceptiongroup/description
This is a backport of the BaseExceptionGroup and ExceptionGroup classes from Python 3.11.
endef

$(eval $(call Py3Package,python3-exceptiongroup))
$(eval $(call BuildPackage,python3-exceptiongroup))
$(eval $(call BuildPackage,python3-exceptiongroup-src))
