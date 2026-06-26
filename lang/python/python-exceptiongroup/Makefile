include $(TOPDIR)/rules.mk

PKG_NAME:=python-exceptiongroup
PKG_VERSION:=1.3.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=exceptiongroup
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-flit-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-exceptiongroup
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Backport of PEP 654 (exception groups)
  URL:=https://github.com/agronholm/exceptiongroup
  DEPENDS:=+python3-light +python3-typing-extensions
endef

define Package/python3-exceptiongroup/description
This is a backport of the BaseExceptionGroup and ExceptionGroup classes from Python 3.11.
endef

$(eval $(call Py3Package,python3-exceptiongroup))
$(eval $(call BuildPackage,python3-exceptiongroup))
$(eval $(call BuildPackage,python3-exceptiongroup-src))
