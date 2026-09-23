include $(TOPDIR)/rules.mk

PKG_NAME:=python-synchronicity
PKG_VERSION:=0.12.5
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=synchronicity
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-synchronicity
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Export blocking and async library versions from a single async implementation
  URL:=https://github.com/modal-labs/synchronicity
  DEPENDS:= \
	+python3 \
	+python3-typing-extensions
endef

define Package/python3-synchronicity/description
Python 3 has some amazing support for async programming but it's arguably made it a bit harder to develop libraries.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-synchronicity))
$(eval $(call BuildPackage,python3-synchronicity))
$(eval $(call BuildPackage,python3-synchronicity-src))
