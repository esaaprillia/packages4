include $(TOPDIR)/rules.mk

PKG_NAME:=python-flexparser
PKG_VERSION:=0.4
PKG_RELEASE:=1

PYPI_NAME:=flexparser
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-flexparser
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Parsing made fun ... using typing.
  URL:=https://github.com/hgrecco/flexparser
  DEPENDS:= \
	+python3-typing-extensions
endef

define Package/python3-flexparser/description
Why write another parser? I have asked myself the same question while working on this project.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-flexparser))
$(eval $(call BuildPackage,python3-flexparser))
$(eval $(call BuildPackage,python3-flexparser-src))
