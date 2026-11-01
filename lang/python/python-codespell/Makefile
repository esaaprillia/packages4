include $(TOPDIR)/rules.mk

PKG_NAME:=python-codespell
PKG_VERSION:=2.4.3
PKG_RELEASE:=1

PYPI_NAME:=codespell
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=python-setuptools-scm/host
HOST_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-codespell
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Fix common misspellings in text files
  URL:=https://github.com/codespell-project/codespell
  DEPENDS:= \
	+python3-light \
	+python3-chardet
endef

define Package/python3-codespell/description
Fix common misspellings in text files.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-codespell))
$(eval $(call BuildPackage,python3-codespell))
$(eval $(call BuildPackage,python3-codespell-src))
