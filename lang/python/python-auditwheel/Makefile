include $(TOPDIR)/rules.mk

PKG_NAME:=python-auditwheel
PKG_VERSION:=6.8.2
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=auditwheel
PKG_HASH:=skip

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-setuptools-scm/host python-packaging/host python-pyelftools/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-auditwheel
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Cross-distribution Linux wheels
  URL:=https://github.com/pypa/auditwheel
  DEPENDS:= \
	+python3 \
	+python3-packaging \
	+python3-pyelftools
endef

define Package/python3-auditwheel/description
Auditing and relabeling of Linux and Android wheels.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-auditwheel))
$(eval $(call BuildPackage,python3-auditwheel))
$(eval $(call BuildPackage,python3-auditwheel-src))
