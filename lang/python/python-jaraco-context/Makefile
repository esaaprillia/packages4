include $(TOPDIR)/rules.mk

PKG_NAME:=python-jaraco-context
PKG_VERSION:=6.1.2
PKG_RELEASE:=1

PYPI_NAME:=jaraco_context
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-coherent-licensed/host
HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-coherent-licensed/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-jaraco-context
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Useful decorators and context managers
  URL:=https://github.com/jaraco/jaraco.context
  DEPENDS:=+python3
endef

define Package/python3-jaraco-context/description
See the docs linked from the badge above for the full details, but here are some features that may be of interest.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-jaraco-context))
$(eval $(call BuildPackage,python3-jaraco-context))
$(eval $(call BuildPackage,python3-jaraco-context-src))
