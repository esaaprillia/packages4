include $(TOPDIR)/rules.mk

PKG_NAME:=python-rply
PKG_VERSION:=0.7.8
PKG_RELEASE:=1

PYPI_NAME:=rply
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-rply
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A pure Python Lex/Yacc that works with RPython
  URL:=https://github.com/alex/rply
  DEPENDS:= \
	+python3-light \
	+python3-appdirs
endef

define Package/python3-rply/description
Welcome to RPLY! A pure Python parser generator, that also works with RPython.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-rply))
$(eval $(call BuildPackage,python3-rply))
$(eval $(call BuildPackage,python3-rply-src))
